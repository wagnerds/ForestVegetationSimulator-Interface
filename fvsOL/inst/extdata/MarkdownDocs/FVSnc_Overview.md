Klamath Mountains (NC) Variant Overview of the Forest Vegetation Simulator

September 2025

![](data:image/jpeg;base64...)

![Forest%20Service%20Color](data:image/jpeg;base64...)Forested land on the Klamath National Forest

(Todd Drake, FS-R5)

Klamath Mountains (NC) Variant Overview of the Forest Vegetation Simulator

# Authors and Contributors:

The FVS staff has maintained model documentation for this variant in the form of a variant overview since its release in 1989. The original authors were Gary Dixon and Ralph Johnson. In 2008, the previous document was replaced with this updated variant overview. Gary Dixon, Christopher Dixon, Robert Havis, Chad Keyser, Stephanie Rebain, Erin Smith-Mateja, and Don Vandendriesche were involved with this major update. Stephanie Rebain cross-checked information contained in this variant overview with the FVS source code. Relationships for redwood were incorporated in 2021.

FVS Staff. 2008 (Revised September 23, 2025). Klamath Mountains (NC) Variant Overview – Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 65p.

Table of Contents

[Authors and Contributors: ii](#_Toc209542572)

[1.0 Introduction 1](#_Toc209542573)

[2.0 Geographic Range 2](#_Toc209542574)

[3.0 Control Variables 3](#_Toc209542575)

[3.1 Location Codes 3](#_Toc209542576)

[3.2 Species Codes 4](#_Toc209542577)

[3.3 Habitat Type, Plant Association, and Ecological Unit Codes 5](#_Toc209542578)

[3.4 Site Index 5](#_Toc209542579)

[3.4.1 Region 5 Site Class 6](#_Toc209542580)

[3.5 Maximum Density 7](#_Toc209542581)

[4.0 Growth Relationships 9](#_Toc209542582)

[4.1 Height-Diameter Relationships 9](#_Toc209542583)

[4.2 Bark Ratio Relationships 10](#_Toc209542584)

[4.3 Crown Ratio Relationships 10](#_Toc209542585)

[4.3.1 Crown Ratio Dubbing 11](#_Toc209542586)

[4.3.2 Crown Ratio Change 13](#_Toc209542587)

[4.3.3 Crown Ratio for Newly Established Trees 13](#_Toc209542588)

[4.4 Crown Width Relationships 14](#_Toc209542589)

[4.4.1 Region 5 Crown Width 14](#_Toc209542590)

[4.4.2 Region 6 Crown Width 15](#_Toc209542591)

[4.5 Crown Competition Factor 17](#_Toc209542592)

[4.6 Small Tree Growth Relationships 17](#_Toc209542593)

[4.6.1 Small Tree Height Growth 18](#_Toc209542594)

[4.6.2 Small Tree Diameter Growth 20](#_Toc209542595)

[4.7 Large Tree Growth Relationships 20](#_Toc209542596)

[4.7.1 Large Tree Diameter Growth 20](#_Toc209542597)

[4.7.2 Large Tree Height Growth 23](#_Toc209542598)

[5.0 Mortality Model 26](#_Toc209542599)

[6.0 Regeneration 28](#_Toc209542600)

[7.0 Volume 30](#_Toc209542601)

[8.0 Fire and Fuels Extension (FFE-FVS) 32](#_Toc209542602)

[9.0 Insect and Disease Extensions 33](#_Toc209542603)

[10.0 Literature Cited 34](#_Toc209542604)

[11.0 Appendices 37](#_Toc209542605)

[11.1 Appendix A. Distribution of Data Samples 37](#_Toc209542606)

[11.2 Appendix B. Plant Association Codes 40](#_Toc209542607)

Quick Guide to Default Settings

|  |  |  |
| --- | --- | --- |
| **Parameter or Attribute** | **Default Setting** | |
| Number of Projection Cycles | 1 (10 if using FVS GUI) | |
| Projection Cycle Length | 5 years | |
| Location Code (National Forest) | 505 Klamath | |
| Plant Association Code (Region 5 /Region 6) | 0 (Unknown) / 46 (CWC221 ABCO-PSME) | |
| Slope | 5 percent | |
| Aspect | 0 (no meaningful aspect) | |
| Elevation | 45 (4500 feet) | |
| Latitude / Longitude | Latitude | Longitude |
| All location codes | 42 | 123 |
| Site Species (Region 5 / Region 6) | DF / Plant Association Code Specific | |
| Site Index (Region 5 / Region 6) | 90 feet / Plant Association Code Specific | |
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

The NC variant was developed in 1989 and overlaps some of the geographic range of the Inland California (CA) variant. Data used in building the NC variant came from forest inventories, silvicultural stand examinations, and special plots installed in plantations. The forest inventories came from the Forest Service as well as the Hoopa Indian Reservation and Simpson Timber Company. Models for sugar pine, incense cedar, and red fir are from work done by Leroy Dolph for the Westside Sierra (WS) variant.

To fully understand how to use this variant, users should also consult the following publication:

* Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002)

This publication may be downloaded from the Forest Management Service Center (FMSC), Forest Service website. Other FVS publications may be needed if one is using an extension that simulates the effects of fire, insects, or diseases.

# 2.0 Geographic Range

The NC variant was fit to data representing forest types in the Klamath Mountains of California and Oregon. Data used in initial model development came from forest inventories, silvicultural stand examinations, and special plots installed in plantations. The forest inventories came from the Forest Service as well as the Hoopa Indian Reservation and Simpson Timber Company. Distribution of data samples for species fit from this data are shown in Appendix A.

The NC variant covers forest types in northwest California and southwest Oregon. The suggested geographic range of use for the NC variant is shown in figure 2.0.1.

**![Suggested geographic range of the Klamath variant.](data:image/jpeg;base64...)Figure 2.0.1 Suggested geographic range of use for the NC variant.**

Within USFS Region 5, the following forests and districts should use the NC variant: Happy Camp and Ukonom districts of the Klamath NF; Monterey District of the Los Padres NF; Covelo and Upper Lake districts of the Mendocino NF; and all districts of the Six Rivers NF (Warbington 2004, based on Spreadsheet provided by Ralph Warbington, R5 Ecosystem Planning Staff, Remote Sensing Lab, http://www.fs.fed.us/r5/rsl/).

# 3.0 Control Variables

FVS users need to specify certain variables used by the NC variant to control a simulation. These are entered in parameter fields on various FVS keywords available in the FVS interface or they are read from an FVS input database using the Database Extension.

## 3.1 Location Codes

The location code is a 3- or 4-digit code where, in general, the first digit of the code represents the Forest Service Region Number, and the last two digits represent the Forest Number within that region. In some cases, a location code beginning with a “7” or “8” is used to indicate an administrative boundary that doesn’t use a Forest Service Region number (for example, other federal agencies, state agencies, or other lands).

If the location code is missing or incorrect in the NC variant, a default forest code of 505 (Klamath National Forest) will be used. Location codes recognized in the NC variant are shown in tables 3.1.1 and 3.1.2.

**Table 3.1.1 Location codes used in the NC variant.**

|  |  |
| --- | --- |
| **Location Code** | **Location** |
| 505 | Klamath National Forest |
| 510 | Six Rivers National Forest |
| 514 | Shasta-Trinity National Forest |
| 611 | Siskiyou National Forest |
| 705 | Hoopa Indian Reservation |
| 712 | BLM Coos Bay |
| 715, 800 | Simpson Timber (715 mapped to 800) |
| 507 | Los Padres National Forest (mapped to 510) |
| 508 | Mendocino National Forest (mapped to 510) |
| 518 | Trinity National Forest (mapped to 514) |

**Table 3.1.2 Bureau of Indian Affairs reservation codes used in the NC variant.**

| **Location Code** | **Location** |
| --- | --- |
| 7806 | Dry Creek Rancheria (mapped to 508) |
| 7807 | Robinson Rancheria (mapped to 508) |
| 7810 | Hopland Rancheria (mapped to 508) |
| 7813 | Laytonville Rancheria (mapped to 508) |
| 7815 | Manchester-Pt. Arena Rancheria (mapped to 508) |
| 7816 | Middletown Rancheria (mapped to 508) |
| 7820 | Redwood Valley Rancheria (mapped to 508) |
| 7821 | Round Valley Off-Reservation Trust Land (mapped to 508) |
| 7824 | Stewarts Point Rancheria (mapped to 508) |
| 7830 | Sherwood Valley Rancheria (mapped to 508) |
| 7831 | Sulphur Bank Rancheria (mapped to 508) |
| 7833 | Upper Lake Rancheria (mapped to 508) |
| 7834 | Coyote Valley Reservation (mapped to 508) |
| 7839 | Elk Valley Off-Reservation Trust Land (mapped to 510) |
| 7841 | Yurok Reservation (mapped to 510) |
| 7843 | Trinidad Rancheria (mapped to 510) |
| 7845 | Karuk Off-Reservation Trust Land (mapped to 505) |
| 8103 | Coos, Lower Umpqua, Siuslaw Reservation (mapped to 611) |
| 8105 | Coquille Reservation (mapped to 611) |

## 3.2 Species Codes

The NC variant recognizes 10 species, plus two other composite species categories. You may use FVS species codes, Forest Inventory and Analysis (FIA) species codes, or USDA Natural Resources Conservation Service PLANTS symbols to represent these species in FVS input data. Any valid western species code identifying species not recognized by the variant will be mapped to a similar species in the variant. The species mapping crosswalk is available on the FVS website variant documentation webpage. Any non-valid species code will default to the “other hardwood” category.

Either the FVS sequence number or species code must be used to specify a species in FVS keywords and Event Monitor functions. FIA codes or PLANTS symbols are only recognized during data input and may not be used in FVS keywords. Table 3.2.1 shows the complete list of species codes recognized by the NC variant.

**Table 3.2.1 Species codes used in the NC variant.**

| **Species Number** | **Species Code** | **FIA Code** | **PLANTS Symbol** | **Scientific Name1** | **Common Name1** |
| --- | --- | --- | --- | --- | --- |
| 1 | OS | 299 | 2TN |  | other softwood2 |
| 2 | SP | 117 | PILA | *Pinus lambertiana* | sugar pine |
| 3 | DF | 202 | PSME | *Pseudotsuga menziesii* | Douglas-fir |
| 4 | WF | 015 | ABCO | *Abies concolor* | white fir |
| 5 | MA | 361 | ARME | *Arbutus menziesii* | Pacific madrone |
| 6 | IC | 081 | CADE27 | *Calocedrus decurrens* | incense cedar |
| 7 | BO | 818 | QUKE | *Querqus keloggii* | California black oak |
| 8 | TO | 631 | LIDE3 | *Lithocarpus densiflorus* | tanoak |
| 9 | RF | 020 | ABMA | *Abies magnifica* | California red fir |
| 10 | PP | 122 | PIPO | *Pinus ponderosa* | ponderosa pine |
| 11 | OH | 998 | 2TB |  | other hardwood2 |
| 12 | RW | 211 | SESE3 | *Sequioa sempervirens* | redwood |

1Set based on the USDA Forest Service NRM TAXA lists and the USDA Plants database.

2Other categories use FIA codes and NRM TAXA codes that best match the other category.

## 3.3 Habitat Type, Plant Association, and Ecological Unit Codes

Plant association codes recognized in the NC variant are shown in Appendix B. If an incorrect plant association code is entered or no code is entered, FVS will use the default plant association code, which is CWC221 for Region 6 forests, and 0 (unknown) in Region 5 forests. In Region 6 forests, plant association codes are used as site level information to obtain the default site species type, site indices, and maximum stand density indices. The site species, site index and maximum stand density indices can be reset via FVS keywords. In Region 5 and 6, the plant association codes are used in the Fire and Fuels Extension (FFE) to set fuel loading in cases where there are no live trees in the first cycle and in Region 6 it is used in predicting snag dynamics. Users may enter the plant association code or the plant association FVS sequence number on the STDINFO keyword, when entering stand information from a database, or when using the SETSITE keyword without the PARMS option. If using the PARMS option with the SETSITE keyword, users must use the FVS sequence number for the plant association.

## 3.4 Site Index

Site index is used in some of the growth equations in the NC variant. Users should always use the same site curves that FVS uses, which are shown in table 3.4.1. If site index is available, a single site index for the whole stand can be entered, a site index for each individual species in the stand can be entered, or a combination of these can be entered. A site index value must be greater than or equal to 8, otherwise the value is considered a R5 site class code, see section 3.4.1.

**Table 3.4.1 Site index reference curves for species in the NC variant.**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Species Codes** | **Reference** | **BHA or TTA\*** | **Base Age** | **Region** |
| All species | Dunning (1942); Dunning and Reineke (1933) or R5 Site class | BHA\*\* | 50 | 5 |
| OS, DF | King (1966) Weyerhaeuser Forestry Paper No. 8 | BHA | 50 | 6 |
| WF, IC, RF | Dolph (1987) Research Paper PSW 185 | BHA | 50 | 6 |
| MA, TO, OH | Porter and Wiant (1965) J. of Forestry April 1965 p286 | TTA | 50 | 6 |
| BO | Powers (1972) Research Note PSW 262 | BHA | 50 | 6 |
| SP, PP | Powers and Oliver (1978) Research Paper PSW 128 | TTA | 50 | 6 |
| RW | Krumland and Eng (2005)\*\*\* | BHA | 50 | 5 |

\* Equation is based on total tree age (TTA) or breast height age (BHA)

\*\* Height at BHA 50 should be entered even though the original site curve was a TTA curve

\*\*\* Equation form is presented on page 34 and coefficients are provided on page 68

In Region 5 forests, site index values can either be entered directly or based on the Region 5 Site Class Code. See section 3.4.1 for Region 5 Site Class information. If site index is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 90. In Region 6 forests, the default site species and site index are determined by plant association codes and shown in Appendix B. If the plant association code is missing or incorrect, the site species is set to Douglas-fir with a default site index set to 92.

Site indices for species not assigned a site index are determined based on the site index of the site species (height at base age) with an adjustment for the reference age differences between the site species and the target species. For tanoak and other hardwood, the site index estimate is adjusted by multiplying the site index estimate by an adjustment factor of 0.85.

### 3.4.1 Region 5 Site Class

In Region 5 forests, the site index values can either be entered directly or based on the Region 5 site class (0-7) as shown in table 3.4.1.1. Site class codes of 0-5 were adapted for Region 5 by Jack Levitan from Duncan Dunning's site index curves (Dunning 1942, Dunning & Reineke 1933).

If a Region 5 site class is entered, it is converted to a site index for each species within the model using a two-step process. First, the Region 5 site class is converted to a 50-year site index as shown in table 3.4.1.1 (personal communication with Ralph Warbington in March 2008).

**Table 3.4.1.1 Region 5 site class values converted into 50-year site index in the NC variant.**

|  |  |
| --- | --- |
| **REGION 5 SITE CLASS** | **(BREAST HT AGE)50-YEAR SITE INDEX** |
| 0 | 106 |
| 1 | 90 |
| 2 | 75 |
| 3 | 56 |
| 4 | 49 |
| 5 | 39 |
| 6 | 31 |
| 7 | 23 |

Second, site index for an individual species is determined by multiplying the 50-year site index by a species-specific adjustment factor which is shown in table 3.4.1.2

**Table 3.4.1.2 Region 5 adjustment factors for 50-year site index values in the NC variant.**

| **Species Code** | **Adjustment Factor** |
| --- | --- |
| OS | 0.90 |
| SP | 0.90 |
| DF | 1.00 |
| WF | 1.00 |
| MA | 0.57 |
| IC | 0.76 |
| BO | 0.57 |
| TO | 0.57 |
| RF | 1.00 |
| PP | 1.00 |
| OH | 0.57 |
| RW | 1.00 |

## 3.5 Maximum Density

Maximum stand density index (SDI) and maximum basal area (BA) are important variables in determining density related mortality and crown ratio change. Maximum basal area is a stand level metric that can be set using the BAMAX or SETSITE keywords. If not set by the user, a default value is calculated from maximum stand SDI each projection cycle. Maximum stand density index can be set for each species using the SDIMAX or SETSITE keywords. If not set by the user, a default value is assigned as discussed below. Maximum stand density index at the stand level is a weighted average, by basal area proportion, of the individual species SDI maximums.

In Region 5, the default maximum SDI is set by species or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, species SDI maximums are assigned from the SDI maximums shown in table 3.5.1.

For Region 5 forests, stand SDI is calculated using the Zeide calculation method (Dixon 2002).

{3.5.1} *SDIMAXi* = *BAMAX* / (0.5454154 \* *SDIU)*

where:

*SDIMAXi* is species-specific SDI maximum

*BAMAX* is the user-specified stand basal area maximum

*SDIU* is theproportion of theoretical maximum density at which the stand reaches actual maximum density (default 0.85, changed with the SDIMAX keyword)

In Region 6 forests and BLM Lakeview locations, the default maximum SDI is set based on a user-specified, or default, plant association code or a user specified basal area maximum. If a user specified basal area maximum is present, the maximum SDI for all species is computed using equation {3.5.1}; otherwise, the maximum SDI for the site species is assigned from the SDI maximum associated with the site species for the plant association code shown in Appendix B. SDI maximums were set based on growth basal area (GBA) analysis developed by Hall (1983) or an analysis of Current Vegetation Survey (CVS) plots in USFS Region 6 by Crookston (2008). Once maximum SDI is determined for the site species, maximum SDI for all other species not assigned a value is estimated using a relative adjustment as seen in equation {3.5.2}. Some SDI maximums associated with plant associations are unreasonably large, so SDI maximums are capped at 850.

{3.5.2} *SDIMAXi* = *SDIMAX*(*SSEC*) \* (*SDIMAX*(*S*) / *SDIMAX*(*SS*))

where:

*SDIMAXi* is species-specific SDI maximum

*SDIMAX(SSEC)* is maximum SDI for the plant association from Appendix B

*SDIMAX(SS)* is maximum SDI for the site species shown in table 3.5.1

*SDIMAX(S)* is maximum SDI for the target species shown in table 3.5.1

**Table 3.5.1 Stand density index maximums by species in the NC variant.**

| **Species Code** | **SDI Maximum\*** | **Mapped to** |
| --- | --- | --- |
| OS | 365 | ponderosa pine |
| SP | 561 |  |
| DF | 570 |  |
| WF | 800 |  |
| MA | 515 |  |
| IC | 576 |  |
| BO | 406 |  |
| TO | 785 |  |
| RF | 1000 |  |
| PP | 365 |  |
| OH | 785 | tanoak |
| RW | 1052 |  |

\*Source of SDI maximums is an unpublished analysis of FIA data by John Shaw.

# 4.0 Growth Relationships

This chapter describes the functional relationships used to fill in missing tree data and calculate incremental growth. In FVS, trees are grown in either the small tree sub-model or the large tree sub-model depending on the diameter.

## 4.1 Height-Diameter Relationships

Height-diameter relationships in FVS are primarily used to estimate tree heights missing in the input data, and occasionally to estimate diameter growth on trees smaller than a given threshold diameter. In the NC variant, FVS will dub in heights by one of two methods. By default, the NC variant will use the Curtis-Arney functional form as shown in equation {4.1.1} (Curtis 1967, Arney 1985).

If the input data contains at least three measured heights for a species, then FVS can switch to a logistic height-diameter equation {4.1.2} (Wykoff, et.al 1982) that may be calibrated to the input data. FVS will not automatically use equation {4.1.2} even if you have enough height values in the input data. To override this default, the user must use the NOHTDREG keyword to turn calibration on. Coefficients for equations {4.1.1} and {4.1.2} are given in Table 4.1.1.

{4.1.1} Curtis-Arney functional form

*DBH* <u>></u> *3.0*”: *HT* = 4.5 + P2 \* exp[-P3 \* *DBH* ^ P4]

*DBH* < *3.0*”: *HT* = [(4.5 + P2 \* exp[-P3 \*3.0 ^ P4] – 4.51) \* (*DBH* – 0.3) / 2.7] + 4.51

{4.1.2} Wykoff functional form

HT = 4.5 + exp(B1 + B2 / (DBH + 1.0))

where:

*HT* is tree height

*DBH* is tree diameter at breast height

B1 - B2 are species-specific coefficients shown in table 4.1.1

P2 - P4 are species-specific coefficients shown in table 4.1.1

**Table 4.1.1 Coefficients for the height-diameter relationship equations {4.1.1} and {4.1.2} in the NC variant.**

| **Species Number** | **Species Code** | **Curtis-Arney Coefficients** | | | **Wykoff Coefficients** | |
| --- | --- | --- | --- | --- | --- | --- |
| **P2** | **P3** | **P4** | **Default B1** | **B2** |
| 1 | OS | 523.0987 | 5.7243 | -0.4109 | 4.78737 | -7.317 |
| 2 | SP | 819.8690 | 6.4531 | -0.3434 | 4.74961 | -7.191 |
| 3 | DF | 523.0987 | 5.7243 | -0.4109 | 4.78737 | -7.317 |
| 4 | WF | 604.8450 | 5.9835 | -0.3789 | 4.80268 | -8.4066 |
| 5 | MA | 160.6821 | 4.1677 | -0.4954 | 4.73881 | -9.4491 |
| 6 | IC | 1530.3300 | 7.0811 | -0.2544 | 4.89619 | -12.559 |
| 7 | BO | 48.6795 | 8.9420 | -1.4832 | 4.8042 | -9.9242 |
| 8 | TO | 679.1972 | 5.5698 | -0.3074 | 4.66181 | -8.3312 |
| 9 | RF | 202.8860 | 8.7469 | -0.8317 | 4.83642 | -7.048 |
| 10 | PP | 1348.0419 | 7.0463 | -0.3076 | 4.23251 | -8.3171 |
| 11 | OH | 679.1972 | 5.5698 | -0.3074 | 4.66181 | -8.3312 |
| 12 | RW | 595.1068 | 5.8103 | -0.3821 | 5.3401 | -15.9354 |

## 4.2 Bark Ratio Relationships

Bark ratio estimates are used to convert between diameter outside bark and diameter inside bark in various parts of the model. Equations used in the NC variant are shown in equations {4.2.1 - 4.2.3}. Coefficients (b1 and b2) and equation reference for these equations by species are shown in table 4.2.1.

{4.2.1} *DBT* = b1 + (b2 \* *DBH*) *BRATIO* = (*DBH* – *DBT*) / *DBH*

{4.2.2} *DIB* = b1 + (b2 \* *DBH*) *BRATIO* = *DIB* / *DBH*

{4.2.3} *DIB* = b1 \* (b2 ^ *DBH*) *BRATIO* = *DIB* / *DBH*

where:

*BRATIO* is species-specific bark ratio (bounded to 0.80 <u><</u> *BRATIO* <u><</u> 0.99)

*DBT* is double bark thickness

*DBH* is tree diameter at breast height

*DIB* is tree diameter inside bark at breast height

b1, b2 is a species-specific coefficient shown in table 4.2.1

**Table 4.2.1 Coefficients and equation reference for equations {4.2.1} – {4.2.3} in the NC variant.**

| **Species Code** | **b1** | **b2** | **Equation Used** |
| --- | --- | --- | --- |
| OS | 0.1429 | 0.1137 | {4.2.1} |
| SP | 0.1429 | 0.1137 | {4.2.1} |
| DF | 0.1045 | 0.1661 | {4.2.1} |
| WF | 0.1593 | 0.1089 | {4.2.1} |
| MA | -0.01348 | 0.98155 | {4.2.2} |
| IC | -0.0549 | 0.1626 | {4.2.1} |
| BO | -0.26824 | 0.95767 | {4.2.2} |
| TO | -0.26824 | 0.95354 | {4.2.2} |
| RF | 0.1593 | 0.1089 | {4.2.1} |
| PP | 0.4448 | 0.1033 | {4.2.1} |
| OH | -0.26824 | 0.95767 | {4.2.2} |
| RW | 0.7012 | 1.04862 | {4.2.3} |

## 4.3 Crown Ratio Relationships

Crown ratio equations are used for three purposes in FVS: (1) to estimate tree crown ratios missing from the input data for both live and dead trees; (2) to estimate change in crown ratio from cycle to cycle for live trees; and (3) to estimate initial crown ratios for regenerating trees established during a simulation.

### 4.3.1 Crown Ratio Dubbing

In the NC variant, crown ratios missing in the input data are predicted using different equations depending on tree species and size. For all species except redwood, live trees less than 1.0” in diameter and dead trees of all sizes use equation {4.3.1.1} and {4.3.1.2} to compute crown ratio. Equation coefficients are found in table 4.3.1.1.

{4.3.1.1} *X* = R1 + R2 \* *DBH* + R3 \* *HT* + R4 \* *BA* + R5 \* *PCCF* + R6 \* *HTAvg / HT* + R7 \* *HTAvg* + R8 \* *BA* \* *PCCF* + R9 \* *MAI*

{4.3.1.2} *CR* = 1 / (1 + exp(*X+* *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*PCCF* is crown competition factor on the inventory point where the tree is established

*HTAvg* is average height of the 40 largest diameter trees in the stand

*MAI* is stand mean annual increment

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD

R1 – R9 are species-specific coefficients shown in table 4.3.1

**Table 4.3.1.1 Coefficients for the crown ratio equation {4.3.1.1} in the NC variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | |
| **OS, SP** | **DF, WF, MA, TO, RF** | **IC** | **BO** | **PP** | **OH** |
| R1 | -1.66949 | -0.42669 | -0.42669 | -1.66949 | -1.66949 | -2.19723 |
| R2 | -0.209765 | -0.093105 | -0.093105 | -0.209765 | -0.209765 | 0 |
| R3 | 0 | 0.022409 | 0.022409 | 0 | 0 | 0 |
| R4 | 0.003359 | 0.002633 | 0.002633 | 0.003359 | 0.003359 | 0 |
| R5 | 0.011032 | 0 | 0 | 0.011032 | 0.011032 | 0 |
| R6 | 0 | -0.045532 | -0.045532 | 0 | 0 | 0 |
| R7 | 0.017727 | 0 | 0 | 0.017727 | 0.017727 | 0 |
| R8 | -0.000053 | 0.000022 | 0.000022 | -0.000053 | -0.000053 | 0 |
| R9 | 0.014098 | -0.013115 | -0.013115 | 0.014098 | 0.014098 | 0 |
| SD | 0.5 | 0.6957 | 0.9310 | 0.6124 | 0.4942 | 0.2 |

For all species except redwood, a Weibull-based crown model developed by Dixon (1985) as described in Dixon (2002) is used to predict crown ratio for all trees 1.0” in diameter or larger. To estimate crown ratio using this methodology, the average stand crown ratio is estimated from stand density index using equation {4.3.1.3}. Weibull parameters are then estimated from the average stand crown ratio using equations in equation set {4.3.1.4}. Individual tree crown ratio is then set from the Weibull distribution, equation {4.3.1.5} based on a tree’s relative position in the diameter distribution and multiplied by a scale factor, shown in equation {4.3.1.6}, which accounts for stand density. Crowns estimated from the Weibull distribution are bounded to be between the 5 and 95 percentile points of the specified Weibull distribution. Equation coefficients for each species are shown in table 4.3.1.2.

{4.3.1.3} *ACR* = d0 + d1 \* *RELSDI* \* 100.0

*RELSDI* = *SDIstand* / *SDImax*

{4.3.1.4} Weibull parameters A, B, and C are estimated from average crown ratio

*A* = a0

*B* = b0 + b1 \* ACR (*B* <u>></u> 1)

*C* = c0 + c1 \* ACR (*C* <u>></u> 2)

{4.3.1.5} *Y* = 1-exp(-((*X*-A)/B)^C)

{4.3.1.6} *SCALE =* 1.5 – *RELSDI*

*RELSDI* = *SDIstand* / *SDImax*

where:

*ACR* is predicted average stand crown ratio for the species

*SDIstand* is stand density index of the stand

*SDImax* is maximum stand density index

*X* is a tree’s crown ratio expressed as a percent / 10

*Y* is a trees rank in the diameter distribution (1 = smallest; ITRN = largest)

divided by the total number of trees (ITRN) multiplied by *SCALE*

*A*, *B*, *C* are parameters of the Weibull crown ratio distribution

*SCALE* is a density dependent scaling factor(bounded to 0.3 <u><</u> *SCALE* <u><</u> 1.0)

a0, b0-1, c0-1, and d0-1 are species-specific coefficients shown in table 4.3.1.2

**Table 4.3.2 Coefficients for the Weibull parameter equations {4.3.1.3} and {4.3.1.4} in the NC variant.**

| **Species Code** | **a0** | **b0** | **b1** | **c0** | **c1** | **d0** | **d1** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| OS | 0 | 0.52909 | 1.00677 | -3.48211 | 1.3878 | 7.48846 | -0.02899 |
| SP | 0 | 0.25115 | 1.05987 | 0.33383 | 0.63833 | 6.92893 | -0.04053 |
| DF | 0 | 0.52909 | 1.00677 | -3.48211 | 1.3878 | 7.48846 | -0.02899 |
| WF | 0 | 0.48464 | 1.01272 | -2.78353 | 1.27283 | 7.44422 | -0.04779 |
| MA | 0 | 0.08402 | 1.10297 | 0.91078 | 0.45819 | 3.64292 | -0.00317 |
| IC | 0 | 0.29964 | 1.05398 | -1.0927 | 0.80687 | 5.12357 | -0.01042 |
| BO | 0 | 0.06607 | 1.10705 | 2.04714 | 0.1507 | 6.82187 | -0.02247 |
| TO | 0 | 0.25667 | 1.06474 | 0.11729 | 0.61681 | 5.95912 | -0.01812 |
| RF | 0 | 0.16601 | 1.0815 | 0.9142 | 0.45768 | 6.14578 | -0.02781 |
| PP | 0 | 0.03685 | 1.09499 | 4.0134 | 0.04946 | 6.04928 | -0.01091 |
| OH | 0 | 0.25667 | 1.06474 | 0.11729 | 0.61681 | 5.95912 | -0.01812 |

For redwood, equation {4.3.1.7} and equation {4.3.1.8} are used to compute crown ratio for live trees less than 1” and dead trees of all sizes. For live redwood greater than 1”, equation {4.3.1.7} and equation {4.3.1.9} are used to compute crown ratio.

{4.3.1.7} *X* = -1.021064 + 0.309296 \* ln(*H\*12/D)* + 0.869720 \* *PRD -* 0.116274 \* *D/QMDPLT*

{4.3.1.8} *CR* = 1 / (1 + exp(*X +* *N(0,SD)*)) where absolute value of (*X* + *N(0,SD)*) < 86

{4.3.1.9} *CR* = 1 / (1 + exp(*X*))

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.05 <u><</u> *CR* <u><</u> 0.95)

*D* is tree diameter at breast height

*H* is tree height

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

*QMDPLT* is quadratic mean diameter of the inventory point (constrained to minimum of 1”)

*N(0,SD)* is a random increment from a normal distribution with a mean of 0 and a standard deviation of SD (0.15)

### 4.3.2 Crown Ratio Change

Crown ratio change is estimated after growth, mortality and regeneration are estimated during a projection cycle. Crown ratio change is the difference between the crown ratio at the beginning of the cycle and the predicted crown ratio at the end of the cycle. Crown ratio predicted at the end of the projection cycle is estimated for live tree records using the Weibull distribution, equations {4.3.1.3}-{4.3.1.6}, for all species except redwood. For redwood, crown ratio predicted at the end of the projection cycle is estimated using equations {4.3.1.7) and {4.3.1.9}. Crown change is checked to make sure it doesn’t exceed the change possible if all height growth produces new crown. Crown change is further bounded to 1% per year for the length of the cycle to avoid drastic changes in crown ratio. Equations {4.3.1.1} and {4.3.1.2} are not used when estimating crown ratio change.

### 4.3.3 Crown Ratio for Newly Established Trees

Crown ratios for newly established trees during regeneration are estimated using equation {4.3.3.1}. A random component is added in equation {4.3.3.1} to ensure that not all newly established trees are assigned exactly the same crown ratio.

{4.3.3.1} *CR* = 0.89722 – 0.0000461 \* *PCCF* + *RAN*

where:

*CR* is crown ratio expressed as a proportion (bounded to 0.2 <u><</u> *CR* <u><</u> 0.9)

*PCCF* is crown competition factor on the inventory point where the tree is established

*RAN* is a small random component

## 4.4 Crown Width Relationships

The NC variant calculates the maximum crown width for each individual tree, based on individual tree and stand attributes. Crown width for each tree is reported in the tree list output table and used for percent canopy cover (*PCC*) calculations in the model.

### 4.4.1 Region 5 Crown Width

Crown width in Region 5 forests and Hoopa Indian Reservation is calculated by using equations {4.4.1.1} – {4.4.1.5}. If a tree has a *DBH* greater than or equal to its threshold diameter (given as *DBHT*), then it uses equation {4.4.1.1}, {4.4.1.2}, or {4.4.1.3} depending on the species. If a tree has a *DBH* less than its threshold diameter, then it uses equation {4.4.1.4} or {4.4.1.5} depending on the height of the tree. Coefficients, equation reference, and threshold diameter values for these equations are shown in table 4.4.1.1 by species.

{4.4.1.1} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH*

{4.4.1.2} *DBH* <u>></u> *DBHT*: *CW* = a1 \* *DBH^*a2

{4.4.1.3} *DBH* <u>></u> *DBHT*: *CW* = a1 + a2 \* *DBH* + a3 \* *DBH^*2

{4.4.1.4} *HT* < 4.5’ and *DBH* < *DBHT*: *CW* = *HT* \* s1

{4.4.1.5} *HT* <u>></u> 4.5’ and *DBH* < *DBHT*: *CW* = d1 + d2 \* *DBH*

where:

*CW* is maximum tree crown width

*DBH* is tree diameter at breast height

*DBHT* is threshold diameter shown in table 4.4.1.1

*HT* is tree height

s1, d1-2, and a1-3 are species-specific coefficients shown in table 4.4.1.1

**Table 4.4.1.1 Coefficients and equation reference for R5 Crown Width equations {4.4.1.1} – {4.4.1.5} in the NC variant.**

| **Species Code** | **Equation Used\*** | ***DBHT*** | **d1** | **d2** | **a1** | **a2** | **a3** | **s1** |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| OS | {4.4.1.1} | 5 | 3.5 | 1.1 | 6 | 0.6 | 0 | 0.7778 |
| SP | {4.4.1.1} | 7.4 | 3.5 | 0.338 | -1.476 | 1.01 | 0 | 0.7778 |
| DF | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |
| WF | {4.4.1.1} | 5 | 3.26 | 1.103 | 5.82 | 0.591 | 0 | 0.7778 |
| MA | {4.4.1.1} | 5 | 3.11 | 1.008 | 1 | 1.43 | 0 | 0.5556 |
| IC | {4.4.1.1} | 5 | 3.5 | 1.192 | 7.11 | 0.47 | 0 | 0.7778 |
| BO | {4.4.1.1} | 5 | 2.5 | 2.7 | 10 | 1.2 | 0 | 0.5556 |
| TO | {4.4.1.1} | 13.4 | 2.23 | 1.63 | 10 | 1.05 | 0 | 0.5556 |
| RF | {4.4.1.1} | 5 | 3.5 | 1.063 | 6.71 | 0.421 | 0 | 0.7778 |
| PP | {4.4.1.2} | 5 | 3.77 | 0.7756 | 2.24 | 0.763 | 0 | 0.7778 |
| OH | {4.4.1.1} | 5 | 2.5 | 1.4 | 2 | 1.5 | 0 | 0.5556 |
| RW | {4.4.1.1} | 5 | 3.62 | 1.37 | 6.81 | 0.732 | 0 | 0.7778 |

\*Equation refers to the species-specific equation used when *DBH* <u>></u> *DBHT*

### 4.4.2 Region 6 Crown Width

Crown width for region 6 forests, Bureau of Land Management and Simpson Lumber locations are calculated using equations {4.4.2.1} – {4.4.2.4}, and coefficients for these equations are shown in table 4.4.2.1. The minimum diameter and bounds for certain data values are given in table 4.4.2.2. Equation numbers in table 4.4.2.1 are given with the first three digits representing the FIA species code, and the last two digits representing the equation source.

{4.4.2.1} Bechtold (2004); Equation 02

*DBH* <u>></u> *MinD*: *CW* = a1 + (a2 \* *DBH*) + (a3 \* *DBH*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)

*DBH* < *MinD*: *CW* = [a1 + (a2 \* *MinD*) + (a3 \* *MinD*^2) + (a4 \* *CR%*) + (a5 \* *BA*) + (a6 \* *HI*)] \* (*DBH* / *MinD*)

{4.4.2.2} Crookston (2005); Equation 04

*DBH* > *MinD: CW* = a1 \* *DBH^*a2

*DBH* < *MinD: CW* = [a1 \* *MinD^*a2] \* (*DBH* / *MinD*)

{4.4.2.3} Crookston (2005); Equation 05

*DBH* <u>></u> *MinD: CW* = (a1 \* *BF*) \* *DBH*^a2 \* *HT*^a3 \* *CL^*a4 \* (*BA* + 1.0)^a5 \* exp(*EL*)^a6

*DBH* < *MinD: CW* = [CW = (a1 \* BF) \* *MinD*^a2 \* HT^a3 \* CL^a4 \* (BA + 1.0)^a5 \* exp(EL)^a6] \* (*DBH* / *MinD*)

{4.4.2.4} Donnelly (1996); Equation 06

*DBH* <u>></u> *MinD CW* = a1 \* *DBH^*a2

*DBH* < *MinD CW* = [a1 \* *MinD*^a2] \* (*DBH* / *MinD*)

where:

*BF* is a species-specific coefficient based on forest code (*BF* = 1.0 in the AK variant)

*CW* is tree maximum crown width

*CL* is tree crown length

*DBH* is tree diameter at breast height

*HT* is tree height

*BA* is total stand basal area

*EL* is stand elevation in hundreds of feet

*MinD* is the minimum diameter

*HI* is the Hopkins Index

*HI* = (ELEVATION - 5449) / 100) \* 1.0 + (LATITUDE - 42.16) \* 4.0 + (-116.39 -LONGITUDE) \* 1.25

a1 – a6 are species-specific coefficients shown in table 4.4.2

**Table 4.4.2.1 Coefficients for crown width equations {4.4.2.1}-{4.4.2.4} in the NC variant.**

| **Species Code** | **Equation Number\*** | **a1** | **a2** | **a3** | **a4** | **a5** | **a6** |
| --- | --- | --- | --- | --- | --- | --- | --- |
| OS | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| SP | 11705 | 3.593 | 0.63503 | -0.22766 | 0.17827 | 0.04267 | -0.0029 |
| DF | 20205 | 6.0227 | 0.54361 | -0.20669 | 0.20395 | -0.00644 | -0.00378 |
| WF | 01505 | 5.0312 | 0.5368 | -0.18957 | 0.16199 | 0.04385 | -0.00651 |
| MA | 36102 | 4.9133 | 0.9459 | 0 | 0.0611 | 0 | 0.0523 |
| IC | 08105 | 5.0446 | 0.47419 | -0.13917 | 0.1423 | 0.04838 | -0.00616 |
| BO | 81802 | 1.6306 | 0.9867 | 0 | 0.0556 | 0 | -0.1199 |
| TO | 63102 | 3.115 | 0.7966 | 0 | 0.0745 | -0.0053 | 0.0523 |
| RF | 02006 | 3.1146 | 0.578 | 0 | 0 | 0 | 0 |
| PP | 12205 | 4.7762 | 0.74126 | -0.28734 | 0.17137 | -0.00602 | -0.00209 |
| OH | 81802 | 1.630 | 0.9867 | 0 | 0.0556 | 0 | -0.1199 |
| RW | 21104 | 3.7023 | 0.52618 | 0 | 0 | 0 | 0 |

\*Equation number is a combination of the species FIA code (###) and equation source (##).

**Table 4.4.2.2 *MinD* values and data bounds for equations {4.4.2.1}-{4.4.2.4} in the NC variant.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species Code** | **Equation Number\*** | ***MinD*** | ***EL min*** | ***EL* max** | ***HI* min** | ***HI* max** | ***CW* max** |
| OS | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| SP | 11705 | 1.0 | 5 | 75 | n/a | n/a | 56 |
| DF | 20205 | 1.0 | 1 | 75 | n/a | n/a | 80 |
| WF | 01505 | 1.0 | 2 | 75 | n/a | n/a | 35 |
| MA | 36102 | 5.0 | n/a | n/a | -55 | 15 | 43 |
| IC | 08105 | 1.0 | 5 | 62 | n/a | n/a | 78 |
| BO | 81802 | 5.0 | n/a | n/a | -47 | -8 | 52 |
| TO | 63102 | 5.0 | n/a | n/a | -55 | 15 | 41 |
| RF | 02006 | 1.0 | n/a | n/a | n/a | n/a | 65 |
| PP | 12205 | 1.0 | 13 | 75 | n/a | n/a | 50 |
| OH | 81802 | 5.0 | n/a | n/a | -47 | -8 | 52 |
| RW | 21104 | 1.0 | n/a | n/a | n/a | n/a | 39 |

**Table 4.4.2.3 *BF* values for equation {4.4.2.2} in the NC variant.**

| **Species Code** | **Location Code** |
| --- | --- |
| **611, 712, 800** |
| IC | 0.821 |
| DF | 0.961 |
| PP | 0.951 |

\*Any *BF* values not listed in Table 4.4.2.3 are assumed to be *BF* = 1.0

## 4.5 Crown Competition Factor

The NC variant uses crown competition factor (*CCF*) as a predictor variable in some growth relationships. Crown competition factor (Krajicek and others 1961) is a relative measurement of stand density that is based on tree diameters. Individual tree *CCFt* values estimate the percentage of an acre that would be covered by the tree’s crown if the tree were open-grown. Stand *CCF* is the summation of individual tree (*CCFt*)values. A stand *CCF* value of 100 theoretically indicates that tree crowns will just touch in an unthinned, evenly spaced stand.

Crown competition factor for an individual tree is calculated using equation {4.5.1} (Paine and Hahn 1982). All species coefficients are shown in table 4.5.1.

{4.5.1} *CCF* equations

*DBH* <u>></u> 1.0”: *CCFt* = R1 + (R2 \* *DBH*) + (R3 \* *DBH*^2)

0.1” < *DBH* < 1.0”: *CCFt* = R4 \* *DBH*^R5

*DBH* <u><</u> 0.1”: *CCFt* = 0.001

where:

*CCFt* is crown competition factor for an individual tree

*DBH* is tree diameter at breast height

R1 – R5 are species-specific coefficients shown in table 4.5.1

**Table 4.5.1 Coefficients for *CCF* equations {4.5.1} – {4.5.3} in the NC variant.**

| **Species Code** | **R1** | **R2** | **R3** | **R4** | **R5** |
| --- | --- | --- | --- | --- | --- |
| OS | 0.0388 | 0.0269 | 0.00466 | 0.009884 | 1.6667 |
| SP | 0.0392 | 0.018 | 0.00207 | 0.007244 | 1.8182 |
| DF | 0.0388 | 0.0269 | 0.00466 | 0.017299 | 1.5571 |
| WF | 0.069 | 0.0225 | 0.00183 | 0.015248 | 1.7333 |
| MA | 0.0212 | 0.0167 | 0.0033 | 0.011109 | 1.725 |
| IC | 0.0194 | 0.0142 | 0.00261 | 0.008915 | 1.78 |
| BO | 0.0204 | 0.0246 | 0.0074 | 0.009187 | 1.76 |
| TO | 0.0356 | 0.0273 | 0.00524 | 0.007875 | 1.736 |
| RF | 0.0172 | 0.00877 | 0.00112 | 0.011402 | 1.756 |
| PP | 0.0219 | 0.0169 | 0.00325 | 0.007813 | 1.778 |
| OH | 0.0356 | 0.0273 | 0.00524 | 0.011109 | 1.725 |
| RW | 0.0172 | 0.00877 | 0.00112 | 0.011402 | 1.756 |

## 4.6 Small Tree Growth Relationships

Trees are considered “small trees” for FVS modeling purposes when they are smaller than some threshold diameter. The threshold diameter is set to 3.0” for all species in the NC variant.

The small tree model is height-growth driven, meaning height growth is estimated first and diameter growth is estimated from height growth. These relationships are discussed in the following sections.

### 4.6.1 Small Tree Height Growth

The small-tree height increment model predicts 5-year height growth (*HTG*) for small trees. For all species except redwood, height growth in the NC variant is estimated by using equations {4.6.1.1} - {4.6.1.3}. Equation reference, coefficients, and site index adjustment factors are shown in table 4.6.1.1.

{4.6.1.1} *HTG* = -2.193 + (4.292 \* *RELHT*) + (0.0566 \* *CR*^2) + (0.1699 \* *HT*) + (-0.00828 \* *BA*) + (0.00768 \* *SI*)

{4.6.1.2} *HTG* = exp[c1 + c2 \* ln(*BA*)]

{4.6.1.3} *RELHT* equations

*HT* or *AVH* are 0: *RELHT* = 1

*HT* > 0, *AVH* > 0, *PCCF* > 75: *RELHT* = *HT* / *AVH*

*HT* > 0, *AVH* > 0, *PCCF* <u><</u> 75: *RELHT* = 1 – [(((HT / AVH) – 1) / 75) \* PCCF]

where:

*HTG* is estimated height growth for the cycle

*RELHT* is a relative tree height variable; bounded so RELHT <u><</u> 1.5

*CR* is crown ratio expressed as a percent divided by 10

*HT* is tree height

*BA* is total stand basal area

*SI* is species site index

*AVH* is average height of the 40 largest diameter trees in the stand

*PCCF* is crown competition factor or the inventory point on which the tree is located

c1 and c2 are species specific coefficients shown in table 4.6.1.1

For redwood, a potential height growth curve is used to estimate small tree height growth. Height growth is computed by subtracting the current predicted height from the predicted height 5 years in the future, as depicted in equation {4.6.1.4}.

{4.6.1.4} *POTHTG* = 2.242202 \* *SI* \* [1.0 – exp (-0.010742 \* *AGE1*)]^ 0.919076

where:

*POTHTG* is predicted tree height, used for current and future height growth

*SI* is species site index

*AGE1* is tree age at breast height

A*GE1* = 1/ -0.010742 \*(ln(1-(*HT*/2.242202/*SI*)^(1/ 0.919076))

**Table** **4.6.1.1** Equation reference, diameter bounds, and coefficients by species for small-tree height growth in the NC variant.

| **Species Code** | ***POTHTG***  **Equation** | **c1** | **c2** | ***Xmin*** | ***Xmax*** |
| --- | --- | --- | --- | --- | --- |
| OS | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| SP | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| DF | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| WF | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| MA | {4.6.1.2} | 3.560 | -0.54648 | 2.0 | 5.0 |
| IC | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| BO | {4.6.1.2} | 3.817 | -0.78296 | 2.0 | 5.0 |
| TO | {4.6.1.2} | 3.385 | -0.58984 | 2.0 | 5.0 |
| RF | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| PP | {4.6.1.1} | 0 | 0 | 2.0 | 5.0 |
| OH | {4.6.1.2} | 3.385 | -0.54984 | 2.0 | 5.0 |
| RW | {4.6.1.4} | 0 | 0 | 2.0 | 10.0 |

For all species, a small random error is then added to the height growth estimate. The estimated height growth (*HTG*) is then adjusted to account for cycle length, user defined small-tree height growth adjustments, and adjustments due to small tree height model calibration from the input data.

Height growth estimates from the small-tree model are weighted with the height growth estimates from the large tree model over a range of diameters (*Xmin* and *Xmax*) in order to smooth the transition between the two models. For example, the closer a tree’s *DBH* value is to the minimum diameter (*Xmin*), the more the growth estimate will be weighted towards the small-tree growth model. The closer a tree’s *DBH* value is to the maximum diameter (*Xmax*), the more the growth estimate will be weighted towards the large-tree growth model. If a tree’s *DBH* value falls outside of the range given by *Xmin* and *Xmax*, then the model will use only the small-tree or large-tree growth model in the growth estimate. The weight applied to the growth estimate is calculated using equation {4.6.1.5}, and applied as shown in equation {4.6.1.6}. The range of diameters where this weighting occurs for each species is shown above in table 4.6.1.1.

{4.6.1.5}

DBH <u><</u> Xmin: XWT = 0

Xmin < DBH < Xmax: XWT = (DBH - Xmin) / (Xmax - Xmin)

DBH <u>></u> Xmax: XWT = 1

{4.6.1.6}

Estimated growth = [(1 - *XWT*) \* *STGE*] + [*XWT* \* *LTGE*]

Redwood estimated growth = [(1 - *XWT*) \* ((*STGE+LTGE*)/*2.0*)] + [*XWT* \* *LTGE*]

where:

*XWT* is the weight applied to the growth estimates

*DBH* is tree diameter at breast height

*Xmax* is the maximum *DBH* where weighting between small and large tree models occurs

*Xmin* is the minimum *DBH* where weighting between small and large tree models occurs

*STGE* is the growth estimate obtained using the small-tree growth model

*LTGE* is the growth estimate obtained using the large-tree growth model

### ****4.6.2 Small Tree Diameter Growth****

As stated previously, for trees being projected with the small tree equations, height growth is predicted first, and then diameter growth. Both height at the beginning of the cycle and height at the end of the cycle are known when predicting diameter growth. Small tree diameter growth for trees over 4.5 feet tall is calculated as the difference of predicted diameter at the start of the projection period and the predicted diameter at the end of the projection period, adjusted for bark ratio. These two predicted diameters are estimated using the species-specific height-diameter relationships discussed in section 4.1. Diameter growth estimates for redwood are weighted with the diameter growth estimates from the large-tree model when DBH is between 2” and 7” in a similar manner to the weighting explained in section 4.6.1. By definition, diameter growth is zero for trees less than 4.5 feet tall.

## 4.7 Large Tree Growth Relationships

Trees are considered “large trees” for FVS modeling purposes when they are equal to, or larger than, some threshold diameter. This threshold diameter is set to 3.0” for all species in the NC variant.

The large-tree model is driven by diameter growth meaning diameter growth is estimated first, and then height growth is estimated from diameter growth and other variables. These relationships are discussed in the following sections.

### 4.7.1 Large Tree Diameter Growth

The large tree diameter growth model used in most FVS variants is described in section 7.2.1 in Dixon (2002). For most variants, instead of predicting diameter increment directly, the natural log of the periodic change in squared inside-bark diameter (ln(*DDS*)) is predicted (Dixon 2002; Wykoff 1990; Stage 1973; and Cole and Stage 1972). For variants predicting diameter increment directly, diameter increment is converted to the *DDS* scale to keep the FVS system consistent across all variants.

In the NC variant, three different function forms are used to estimate large-tree diameter growth. Sugar pine (2), incense cedar (6), and red fir (9) use equation 4.7.1.1 to yield a 10-year estimate of ln(DDS). This 10-year estimate is then converted to a 5-year estimate using equation 4.7.1.2. Redwood uses equation 4.7.1.3 to predict 10-year outside bark diameter growth and equation 4.7.1.4 to convert this estimate to 5-year outside bark diameter growth. All other species use equation 4.7.1.5 which yields a 5-year estimate of ln(DDS).

{4.7.1.1} *ln(DDS)* = b1 + (b2 \* *EL*) + (b3 \* *SI*) + (b4 \* *SL*) + (b5 \* *SL*^2) + b6 \* ln(*DBH*)) + (b7 \* *DBH*^2/ 1000) + (b8 \* *ICR*^2 / (ln(*DBH* + 1.0)) \* 1000) + (b9\* *PBAL* / (ln(*DBH* + 1)) \* 100) + (b10 \* ln(*PBA*))

{4.7.1.2} ln(*DDS)* = ln(exp(*LDDS)* / 2.0)

{4.7.1.3} *DI* = exp(-3.502444+ (0.185911 \* ln(*DBH*)) + (-0.000073 \* *DBH*^2) + (-0.001796 \* *PBAL*) + (- 0.42078 \* *PRD*) + (0.589318 \* ln(*CR*)) + (0.415435 \* ln(*SI*)) + (-0.000926 \* *SL*) + (- 0.002203 \* (*SL*) \* COS(*ASP*)))

{4.7.1.4} DI = DI \* 0.5

{4.7.1.5} ln(*DDS* )= b1 + (b2 \* EL^2) + (b3 \* ln(SI)) + (b4 \* sin(ASP) \* *SL*) + (b5 \* cos(ASP) \* *SL*) + (b6 \* SL) + (b7 \* SL^2) + (b8 \* ln(DBH)) + (b9 \* CR) + (b10 \* CR^2) + (b11 \* DBH^2) + (b12 \* BAL / (ln(DBH + 1.0))) + (b13 \* PCCF) + (b14 \* RELHT) + (b15 \* ln(CCF)) + (b16 \* ln(BA)) + b17

where:

*DDS* is the square of the diameter growth increment

*DI* is outside bark diameter growth increment

*EL* is stand elevation in hundreds of feet

*SI* is species site index

*ASP* is stand aspect

*SL* is stand slope

*CR* is crown ratio expressed as a proportion

*ICR* is crown ratio expressed as a percent

*DBH* is tree diameter at breast height

*PBAL* is point basal area in trees larger than the subject tree

*BAL* is total basal area in trees larger than the subject tree

*CCF* is stand crown competition factor

*PCCF* is crown competition factor on the inventory point where the tree is established

*BA* is total stand basal area

*PBA* is basal area on the inventory point where the tree is established

*PRD* isrelative density of the inventory point (point Zeide SDI / point SDI max)

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

b1 - b17  are species-specific coefficients shown in table 4.7.1.1 or table 4.7.1.2

**Table 4.7.1.1 Coefficients (b1 – b17) for equations {4.7.1.1} and {4.7.1.5} in the NC variant.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | |
| **OS** | **SP** | **DF** | **WF** | **MA** | **IC** |
| b1 | \*\* | -0.4297 | \*\* | \*\* | \*\* | 0.0540 |
| b2 | 0 | 0 | 0 | 0 | 0 | 0 |
| b3 | 0.47932 | 0.01401 | 0.56356 | 0.4736 | 0.20189 | 0.012 |
| b4 | -0.02884 | 0 | -0.040708 | -0.0156 | -0.10656 | 0 |
| b5 | -0.14319 | 0 | -0.16836 | -0.1563 | -0.19174 | 0 |
| b6 | 0.635 | 1.26883 | 0.46468 | 0.58937 | -1.29627 | 1.41389 |
| b7 | -1.094 | -0.35325 | -0.87145 | -1.05045 | 0.87335 | -0.48938 |
| b8 | 0.88425 | 0.27986 | 0.8699 | 1.01718 | 1.14082 | 0.32660 |
| b9 | 2.83271 | -0.79922 | 2.9604 | 3.01884 | 2.82796 | -0.16000 |
| b10 | -0.84141 | 0 | -1.08219 | -1.12464 | -2.14739 | -0.25287 |
| b11 | -0.000328\* |  | -0.000313 | -0.000356\* | -0.000875 |  |
| b12 | -0.00358 |  | -0.00443 | -0.00257 | -0.00126 |  |
| b13 | 0 |  | 0 | 0 | 0 |  |
| b14 | 0 |  | 0 | 0 | 0.56348 |  |
| b15 | -0.06784 |  | 0 | 0 | 0 |  |
| b16 | 0 |  | -0.01744 | -0.16596 | 0 |  |
| b17 | 0 |  | 0 | -0.15032 | 0 |  |
| **Coefficient** | **Species Code** | | | | |  |
| **BO** | **TO** | **RF** | **PP** | **OH** |  |
| b1 | \*\* | \*\* | 0.1434 | \*\* | \*\* |  |
| b2 | 0 | 0 | -0.007 | 0 | 0 |  |
| b3 | 0.32093 | 0.00659 | 0.00734 | 1.10842 | 0.00659 |  |
| b4 | -0.11954 | -0.03587 | 0 | 0 | -0.03587 |  |
| b5 | 0.08632 | -0.19935 | -0.834 | 0 | -0.19935 |  |
| b6 | 0.85815 | 0.7353 | 1.53339 | 0 | 0.7353 |  |
| b7 | -1.17209 | -0.99561 | -0.47442 | 0 | -0.99561 |  |
| b8 | 1.23911 | 0.99531 | 0.35739 | 0.96865 | 0.99531 |  |
| b9 | -1.20841 | 2.08524 | -0.44256 | 1.5466 | 2.08524 |  |
| b10 | 2.31782 | -0.98396 | -0.12359 | 0.07152 | -0.98396 |  |
| \*b11 | -0.000338 | -0.000373 |  | -0.000728 | -0.000373 |  |
| b12 | -0.00199 | -0.00147 |  | -0.00408 | -0.00147 |  |
| b13 | 0 | -0.00018 |  | -0.00002 | -0.00018 |  |
| b14 | 0 | 0.50155 |  | 0 | 0.50155 |  |
| b15 | 0 | 0 |  | 0 | 0 |  |
| b16 | 0 | 0 |  | 0 | 0 |  |
| b17 | 0 | 0 |  | 0 | 0 |  |

\*If the location code is 705 (Hoopa Indian Reservation) or 800 (Simpson Timber), the  value is –0.000248 for OS and –0.000268 for WF.

\*\*See tables 4.7.1.2 and 4.7.1.3 for these values

**Table 4.7.1.2 b1 values by location class for equation {4.7.1.5} in the NC variant.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Location**  **Class** | **Species Code** | | | | | | | |
| **OS** | **DF** | **WF** | **MA** | **BO** | **TO** | **PP** | **OH** |
| 1 | -2.00201 | -2.54402 | -1.88042 | -1.6995 | -2.68349 | -0.94563 | -4.6744 | -0.94563 |
| 2 | -2.19449 | -2.41928 | -2.06853 | 0 | 0 | 0 | 0 | 0 |
| 3 | -1.84083 | -2.75656 | -1.69815 | 0 | 0 | 0 | 0 | 0 |

**Table 4.7.1.3 Location class by species and location code in the NC variant.**

| **Location Code** | **Species Code** | | | | | | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **OS** | **DF** | **WF** | **MA** | **BO** | **TO** | **PP** | **OH** |
| 505 – Klamath | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 510 – Six Rivers | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 514 – Shasta-Trinity | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 611 – Siskiyou | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |
| 705 – Hoopa Indian Reservation | 3 | 3 | 3 | 1 | 1 | 1 | 1 | 1 |
| 712 – BLM Coos Bay | 2 | 2 | 2 | 1 | 1 | 1 | 1 | 1 |
| 800 – Simpson Timber | 3 | 3 | 3 | 1 | 1 | 1 | 1 | 1 |

### 4.7.2 Large Tree Height Growth

For all species except redwood, large tree height growth estimates in the NC variant are based on site index curves. Species differences in height growth are accounted for by entering the appropriate curve with the species specific site index value (see section 3.4). Equations {4.7.2.1} – {4.7.2.6} are used to calculate estimated height growth.

{4.7.2.1} Used for other softwood and Douglas-fir

*H5* = [*A5*^2 / (X + (Y \* *A5*) + (Z \* *A5*^2))] + 4.5

X = b1 + (b2 \*b0) / (*SI* – 4.5)

Y = b3 + (b4 \*b0) / (*SI* – 4.5)

Z = b5 + (b6 \*b0) / (*SI* – 4.5)

{4.7.2.2} Used for white fir, incense cedar, and California red fir

*H5* = [(*SI* – b0+ (X1 \* X2)) / X1] + 4.5

X1 = b1\* *A5*^b2 \* exp(b3\* *A5*)

X2 = b4\* (1.0 – exp(b5\* *A5*^b6)

{4.7.2.3} Used for Pacific madrone

*H5* = *SI* / [b0+ (b1/*A5*)]

{4.7.2.4} Used for black oak

*H5* = [*SI* \* (1 + (b2 \* *TERM*)) – (b1\* *TERM*)] \* 0.80

*TERM* = (*A5*)^0.5 – 7.0711

{4.7.2.5} Used for tanoak and other hardwood

*H5* = [*SI* / (b0 + (b1 / *A5*))] \* 0.85

{4.7.2.6} Used for ponderosa pine and sugar pine

*H5* = ((b1 \* *SI*) – b2) \* [(1 – exp(b3 \* *A5*)) ^ (0.001 \* *SI* + b4)]

where:

*H5* is estimated height of the tree in five years

*SI* is species site index

*A5* is estimated age of the tree in five years

b0– b6 are species-specific coefficients shown in table 4.7.2.1

**Table 4.7.2.1 Coefficients (b0 - b6) for height-growth equations in the NC variant.**

|  |  |  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Coefficient** | **Species Code** | | | | | | | | | | | |
| **OS** | | | **SP** | | **DF** | | **WF** | | **MA** | | **IC** |
| b0 | 2500 | | | 0 | | 2500 | | 69.91 | | 0.375 | | 69.91 |
| b1 | -0.954038 | | | 1.88 | | -0.954038 | | 38.0202 | | 31.233 | | 38.0202 |
| b2 | 0.109757 | | | 7.178 | | 0.109757 | | -1.05213 | | 0 | | -1.05213 |
| b3 | 0.0558178 | | | -0.025 | | 0.055818 | | 0.009557 | | 0 | | 0.009557 |
| b4 | 0.0079224 | | | 1.64 | | 0.0079224 | | 101.84289 | | 0 | | 101.84289 |
| b5 | -0.0007338 | | | 0 | | -0.0007338 | | -0.001442 | | 0 | | -0.001442 |
| b6 | 0.0001977 | | | 0 | | 0.0001977 | | 1.679259 | | 0 | | 1.679259 |
| **Coefficient** | | **Species Code** | | | | | | | | |
| **BO** | **TO** | | **RF** | | **PP** | | **OH** | |
| b0 | | 0 | 0.204 | | 69.91 | | 0 | | 0.204 | |
| b1 | | 6.413 | 39.787 | | 38.0202 | | 1.88 | | 39.787 | |
| b2 | | 0.322 | 0 | | -1.05213 | | 7.178 | | 0 | |
| b3 | | 0 | 0 | | 0.009557 | | -0.025 | | 0 | |
| b4 | | 0 | 0 | | 101.84289 | | 1.64 | | 0 | |
| b5 | | 0 | 0 | | -0.001442 | | 0 | | 0 | |
| b6 | | 0 | 0 | | 1.679259 | | 0 | | 0 | |

Potential 5-year height growth (*POTHTG*) is calculated by using equation {4.7.2.7}. If the initial height of the tree is greater than or equal to 300 feet, or the initial age of the tree is greater than or equal to 200 years, then potential height growth is set to 0.1 foot. Modifiers are applied to the height growth based upon a tree’s crown ratio and relative height (using equation {4.7.2.8}). Final height growth is calculated using equation {4.7.2.9} as a product of the modifier and potential height growth. The final height growth is then adjusted to the length of the cycle.

{4.7.2.7} *POTHTG* = *H5* – *HT*

{4.7.2.8} *HTGMOD* = -0.02647 + 0.71338 \* *RELHT*^2 + 0.06851 \* *CR*

{4.7.2.9} *HTG* = *POTHTG* \* *HTGMOD*

where:

*POTHTG* is potential height growth

*H5* is estimated height of the tree in five years

*HT* is tree height at the beginning of the cycle

*HTG* is estimated height growth for the cycle

*HTGMOD* is a weighted height growth modifier

*CR* is a tree’s live crown ratio (compacted) expressed as a percent divided by 10

*RELHT* is tree height divided by average height of the 40 largest diameter trees in the stand

Redwood uses equation {4.7.2.10} to predict 10-year height increment and equation {4.7.2.11} is used to convert this estimate to 5-year height increment. The final height growth is then adjusted to the length of the cycle.

{4.7.2.10} *HTG* = exp(1.412947+ (-0.000204 \* *DBH*^2) + (0.31971\* ln(*DBH*)) + (0.394005 \* ln(*SI*)) + (-(0.399888 \* (ln(*DG10*)) + (-0.451708 \* ln(*HT*))

{4.7.2.11} *HTG* = *HTG* \* 0.5

where:

*HTG* is height growth increment

*DBH* is diameter at breast height

*SI* is species site index

*DG10* is 10-year outside bark diameter growth increment

*HT* is total tree height

A height growth bounding function is used to ensure tree heights do not exceed the height maximum of redwood. The bounding function is applied using the following concepts. For a tree with height less than the lower height-bounding limit, the height growth modifier is set to 1.0. For a tree with a height greater than or equal to the lower height-bounding limit and less than the upper height-bounding limit, a height growth modifier is computed using equation {4.7.2.12}. For a tree with a height greater than the upper height-bounding limit, the height growth modifier is set to 0.1. The lower bounding limit was determined from the height growth fitting data and the upper bounding limit was determined from literature. The final height increment estimate is multiplied by the bounding function, equation {4.7.2.13}.

{4.7.2.12} *HGBND* = 1.0 – ((*HT* - HTLO) / (*HTHI*- *HTLO*))

{4.7.2.13} *HTG* = *HTG* \* *HGBND*

where:

*HGBND* is height growth bounding modifier, limited to 0.1 <u><</u> *HGBND* <u><</u> 1.0

*HT* is total tree height (ft)

*HTLO* is the lower height-bounding limit (217 ft)

*HTHI* is the upper height-bounding limit (380 ft)

# 5.0 Mortality Model

The NC variant uses an SDI-based mortality model as described in Section 7.3.2 of Essential FVS: A User’s Guide to the Forest Vegetation Simulator (Dixon 2002, referred to as EFVS). This SDI-based mortality model is comprised of two steps: 1) determining the amount of stand mortality (section 7.3.2.1 of EFVS) and 2) dispersing stand mortality to individual tree records (section7.3.2.2 of EFVS). In determining the amount of stand mortality, the summation of individual tree background mortality rates is used when stand density is below the minimum level for density dependent mortality (default is 55% of maximum SDI), while stand level density-related mortality rates are used when stands are above this minimum level.

The equation used to calculate individual tree background mortality rates for all species is shown in equation {5.0.1}, and this is then adjusted to the length of the cycle by using a compound interest formula as shown in equation {5.0.2}. Species mapping and coefficients for these equations are shown in tables 5.0.1 and 5.0.2. The overall amount of mortality calculated for the stand is the summation of the final mortality rate (*RIP*) across all live tree records.

{5.0.1} RI = [1 / (1 + exp(p0 + p1 \* DBH))] \* 0.5

{5.0.2} RIP = 1 – (1 – RI*)*^Y

where:

RI is the proportion of the tree record attributed to mortality

RIP is the final mortality rate adjusted to the length of the cycle

DBH is tree diameter at breast height

Y is length of the current projection cycle in years

p0 and p1 are species-specific coefficients shown in table 5.0.1

**Table 5.1.1 Coefficients used in the background mortality equation {5.0.1} in the NC variant.**

|  |  |  |
| --- | --- | --- |
| **Species Code** | **p0** | **p1** |
| OS | 6.5112 | -0.00525 |
| SP | 6.5112 | -0.00525 |
| DF | 7.2985 | -0.01291 |
| WF | 5.1677 | -0.00777 |
| MA | 9.6943 | -0.01273 |
| IC | 5.1677 | -0.00777 |
| BO | 5.9617 | -0.03401 |
| TO | 9.6943 | -0.01273 |
| RF | 5.1677 | -0.00777 |
| PP | 5.5877 | -0.00535 |
| OH | 5.1677 | -0.00777 |
| RW | 2.5968 | 0.51261 |

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

**Table 5.0.3 *MWT* values for the mortality equation {5.0.4} in the NC variant.**

|  |  |
| --- | --- |
| **Species Code** | ***MWT*** |
| OS | 0.65 |
| SP | 0.7 |
| DF | 0.65 |
| WF | 0.55 |
| MA | 0.8 |
| IC | 0.6 |
| BO | 1.0 |
| TO | 0.55 |
| RF | 0.5 |
| PP | 0.85 |
| OH | 0.55 |
| RW | 0.80 |

# 6.0 Regeneration

The NC variant contains a partial establishment model which may be used to input regeneration and ingrowth into simulations. A more detailed description of how the partial establishment model works can be found in section 5.4.5 of the Essential FVS Guide (Dixon 2002).

The regeneration model is used to simulate stand establishment from bare ground, or to bring seedlings and sprouts into a simulation with existing trees. Sprouts are automatically added to the simulation following harvest or burning of known sprouting species (see table 6.0.1 for sprouting species).

**Table 6.0.1 Regeneration parameters by species in the NC variant.**

| **Species Code** | **Sprouting Species** | **Minimum Bud Width (in)** | **Minimum Tree Height (ft)** | **Maximum Tree Height (ft)** |
| --- | --- | --- | --- | --- |
| OS | No | 0.3 | 1 | 27 |
| SP | No | 0.4 | 1 | 31 |
| DF | No | 0.3 | 1 | 25 |
| WF | No | 0.3 | 0.5 | 25 |
| MA | Yes | 0.2 | 1 | 26 |
| IC | No | 0.2 | 0.5 | 24 |
| BO | Yes | 0.2 | 0.5 | 28 |
| TO | Yes | 0.2 | 1 | 20 |
| RF | No | 0.3 | 0.5 | 20 |
| PP | No | 0.5 | 1 | 18 |
| OH | No | 0.2 | 1 | 26 |
| RW | Yes | 0.3 | 1 | 25 |

For more prolific stump sprouting hardwood species, logic rule {6.0.1} is used to determine the number of sprout records, with logic rule {6.0.2} being used for root suckering species. The trees-per-acre represented by each sprout record is determined using the general sprouting probability equation {6.0.2}. See table 6.0.2 for species-specific sprouting probabilities, number of sprout records created, and reference information.

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

where:

DSTMPi is the diameter at breast height of the parent tree

NUMSPRC is the number of sprout tree records

NINT rounds the value to the nearest integer

TPAs is the trees per acre represented by each sprout record

*TPAi* is the trees per acre removed/killed represented by the parent tree

PS is a sprouting probability (see table 6.0.2)

**Table 6.0.2 Sprouting algorithm parameters for sprouting species in the NC variant.**

|  |  |  |  |
| --- | --- | --- | --- |
| **Species Code** | **Sprouting Probability** | **Number of Sprout Records** | **Source** |
| MA | 0.9 | {6.0.2} | McDonald et al. 1983  McDonald and Tappenier 1990 |
| BO | 0.9 | {6.0.1} | McDonald 1978  McDonald 1990 |
| TO | 0.9 | {6.0.2} | Harrington et al. 1992  Wilkinson et al. 1997  Fryer 2008 |
| RW | {6.0.4} | {6.0.2} | Neal 1967  Boe 1975  Griffith 1992 |

Regeneration of seedlings must be specified by the user with the partial establishment model by using the PLANT or NATURAL keywords. Height of the seedlings is estimated in two steps. First, the height is estimated when a tree is 5 years old (or the end of the cycle – whichever comes first) by using the small-tree height growth equations found in section 4.6.1. Users may override this value by entering a height in field 6 of the PLANT or NATURAL keyword; however the height entered in field 6 is not subject to minimum height restrictions and seedlings as small as 0.05 feet may be established. The second step also uses the equations in section 4.6.1, which grow the trees in height from the point five years after establishment to the end of the cycle.

Seedlings and sprouts are passed to the main FVS model at the end of the growth cycle in which regeneration is established. Unless noted above, seedlings being passed are subject to minimum and maximum height constraints and a minimum budwidth constraint shown in table 6.0.1. After seedling height is estimated, diameter growth is estimated using equations described in section 4.6.2. Crown ratios on newly established trees are estimated as described in section 4.3.1.

Regenerated trees and sprouts can be identified in the treelist output file with tree identification numbers beginning with the letters “ES”.

# 7.0 Volume

In the NC variant, volume is calculated for four merchantability standards: total stem cubic feet, merchantable stem cubic feet, sawlog stem cubic feet, and merchantable stem board feet (Scribner Decimal C (R5) and Scribner (R6)). Sawlog cubic foot volume is only reported when the FIAVBC keyword is in use. Volume estimation is based on methods contained in the National Volume Estimator Library maintained by the Forest Products Measurements group in the Forest Management Service Center (Volume Estimator Library Equations 2009). The default volume merchantability standards and equation numbers for the NC variant are shown in tables 7.0.1-7.0.3.

Volume computation methods used by the Forest Inventory and Analysis (FIA) program can be requested with the FIAVBC keyword. This keyword encompasses the National Scale Volume and Biomass estimators (NSVB; Westfall et al. 2024) and regional equations used for woodland species (Burrill et al. 2024). More information about the FIAVBC keyword and required input variables can be found in the Essential FVS Guide (Dixon 2002).

**Table 7.0.1 Volume merchantability standards for the NC variant.**

|  |  |  |
| --- | --- | --- |
| **Merchantable Cubic Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 705 & 712 | 9.0 / 5.0 inches | 9.0 / 5.0 inches |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |
| **Merchantable Board Foot Volume Specifications:** | | |
| Minimum DBH / Top Diameter | Hardwoods | Softwoods |
| 705 & 712 | 9.0 / 5.0 inches | 9.0 / 5.0 inches |
| Region 5 | 9.0 / 6.0 inches | 9.0 / 6.0 inches |
| Region 6 | 9.0 / 4.5 inches | 9.0 / 4.5 inches |
| Stump Height | 1.0 foot | 1.0 foot |

**Table 7.0.2 Volume equation defaults for each species, at specific location codes, with model name.**

| **Common Name** | **Location Code** | **Equation Number** | **Model Type** |
| --- | --- | --- | --- |
| other softwood | 505, 510, 514, 800 | 500WO2W108 | Wensel and Olsen Profile Model |
| other softwood | 611 | 616BEHW299 | Behre's Hyperbola |
| other softwood | 705, 712 | B00BEHW999 | Behre's Hyperbola |
| sugar pine | 505, 510, 514, 800 | 500WO2W117 | Wensel and Olsen Profile Model |
| sugar pine | 611 | 616BEHW117 | Behre's Hyperbola |
| sugar pine | 705, 712 | B00BEHW117 | Behre's Hyperbola |
| Douglas-fir | 505, 510, 514, 800 | 500WO2W202 | Wensel and Olsen Profile Model |
| Douglas-fir | 611 | F06FW2W202 | Behre's Hyperbola |
| Douglas-fir | 705, 712 | B02BEHW202 | Behre's Hyperbola |
| white fir | 505, 510, 514, 800 | 500WO2W015 | Wensel and Olsen Profile Model |
| white fir | 611 | I00FW2W093 | Behre's Hyperbola |
| white fir | 705, 712 | B00BEHW015 | Behre's Hyperbola |
| Pacific madrone | 505, 510, 514, 800 | 500DVEW361 | Pillsbury and Kirkley Equations |
| Pacific madrone | 611 | 616BEHW361 | Behre's Hyperbola |
| Pacific madrone | 705, 712 | B00BEHW361 | Behre's Hyperbola |
| incense cedar | 505, 510, 514, 800 | 500WO2W081 | Wensel and Olsen Profile Model |
| incense cedar | 611 | 616BEHW081 | Behre's Hyperbola |
| incense cedar | 705, 712 | B00BEHW081 | Behre's Hyperbola |
| California black oak | 505, 510, 514, 800 | 500DVEW818 | Pillsbury and Kirkley Equations |
| California black oak | 611 | 616BEHW818 | Behre's Hyperbola |
| California black oak | 705, 712 | B00BEHW800 | Behre's Hyperbola |
| tanoak | 505, 510, 514, 800 | 500DVEW631 | Pillsbury and Kirkley Equations |
| tanoak | 611 | 616BEHW631 | Behre's Hyperbola |
| tanoak | 705, 712 | B00BEHW631 | Behre's Hyperbola |
| California red fir | 505, 510, 514, 800 | 500WO2W020 | Wensel and Olsen Profile Model |
| California red fir | 611 | 616BEHW020 | Behre's Hyperbola |
| California red fir | 705, 712 | B00BEHW021 | Behre's Hyperbola |
| ponderosa pine | 505, 510, 514, 800 | 500WO2W122 | Wensel and Olsen Profile Model |
| ponderosa pine | 611 | I00FW2W073 | Behre's Hyperbola |
| ponderosa pine | 705, 712 | B00BEHW122 | Behre's Hyperbola |
| other hardwood | 505, 510, 514, 800 | 500DVEW981 | Pillsbury and Kirkley Equations |
| other hardwood | 611 | 616BEHW998 | Behre's Hyperbola |
| other hardwood | 705, 712 | B00BEHW999 | Behre's Hyperbola |
| redwood | 505, 510, 514, 800 | 500WO2W211 | Wensel and Olsen Profile Model |
| redwood | 611 | 616BEHW211 | Behre's Hyperbola |
| redwood | 705, 712 | B00BEHW211 | Behre's Hyperbola |

**Table 7.0.3 Citations by Volume Model**

| **Model Name** | **Citation** |
| --- | --- |
| Behre's Hyperbola | USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978. |
| Pillsbury and Kirkley Equations | Norman H Pillsbury and Michael L Kirkley 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414. |
| Wensel and Olsen Profile Model | Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp. |

# 8.0 Fire and Fuels Extension (FFE-FVS)

The Fire and Fuels Extension to the Forest Vegetation Simulator (FFE-FVS) (Reinhardt and Crookston 2003) integrates FVS with models of fire behavior, fire effects, and fuel and snag dynamics. This allows users to simulate various management scenarios and compare their effect on potential fire hazard, surface fuel loading, snag levels, and stored carbon over time. Users can also simulate prescribed burns and wildfires and get estimates of the associated fire effects such as tree mortality, fuel consumption, and smoke production, as well as see their effect on future stand characteristics. FFE-FVS, like FVS, is run on individual stands, but it can be used to provide estimates of stand characteristics such as canopy base height and canopy bulk density when needed for landscape-level fire models.

For more information on FFE-FVS and how it is calibrated for the NC variant, refer to the updated FFE-FVS model documentation (Rebain, comp. 2010) available on the FVS website.

|  |
| --- |
|  |

# 9.0 Insect and Disease Extensions

The FVS Insect and Pathogen model for dwarf mistletoe has been developed for the CA variant through the participation and contribution of various organizations led by Forest Health Protection. This model is currently maintained by the Forest Management Service Center and regional Forest Health Protection specialists. Additional details regarding this model may be found in chapter 8 of the Essential FVS Users Guide (Dixon 2002).

# 10.0 Literature Cited

Arney, J. D. 1985. A modeling strategy for the growth projection of managed stands. Canadian Journal of Forest Research. 15(3):511-518.

Atzet, T. and Wheeler D. 1984. Preliminary plant associations of the Siskiyou Mountain Province. Portland, OR: Forest Service. pp 315.

Bechtold, William A. 2004. Largest-crown-diameter Prediction Models for 53 Species in the Western United States. WJAF. Forest Service. 19(4): pp 241-245.

Burrill, Elizabeth A.; DiTommaso, Andrea M.; Turner, Jeffery A.; Pugh, Scott A.; Christensen, Glenn; Kralicek, Karin M.; Perry, Carol J.; Lepine, Lucie C.; Walker, David M.; Conkling, Barbara L. 2024. The Forest Inventory and Analysis Database, FIADB user guides, volume: database description (version 9.3), nationwide forest inventory (NFI). U.S. Department of Agriculture, Forest Service. 1026 p. [Online].

Cole, D. M.; Stage, A. R. 1972. Estimating future diameters of lodgepole pine. Res. Pap. INT-131. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 20p.

Crookston, Nicholas L. 2005. Draft: Allometric Crown Width Equations for 34 Northwest United States Tree Species Estimated Using Generalized Linear Mixed Effects Models.

Crookston, Nicholas L. 2008. Internal Report.

Curtis, Robert O. 1967. Height-diameter and height-diameter-age equations for second-growth Douglas-fir. Forest Science 13(4):365-375.

Dixon, G. E. 1985. Crown ratio modeling using stand density index and the Weibull distribution. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 13p.

Dixon, Gary E. comp. 2002 (revised frequently). Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U.S. Department of Agriculture, Forest Service, Forest Management Service Center.

Dolph, Leroy K. 1987. Site index curves for young-growth California white fir on the western slopes of the Sierra Nevada. Res. Paper PSW-185. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station.

Donnelly, Dennis. 1996. Internal document on file. Data provided from Region 6. Fort Collins, CO: Forest Service.

Dunning, Duncan, and L.H. Reineke. 1933. Preliminary yield tables for second-growth stands in the California pine region. Tech. Bull. 354. Forest Service. 24p.

Dunning, Duncan. 1942. A site classification for the mixed-conifer selection forests of the Sierra Nevada. Res. Note No. 28. Berkeley, CA: Forest Service, California Forest and Range Experiment Station. 21p.

Fryer, Janet L. 2008. Lithocarpus densiflorus. In: Fire Effects Information System, [Online]. U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station, Fire Sciences Laboratory (Producer).

Hall, Frederick C. 1983. Growth basal area: a field method for appraising forest site productivity for stockability. Can. J. For. Res. 13:70-77.

Harrington, T. B., Tappeiner, I. I., John, C., & Warbington, R. 1992. Predicting crown sizes and diameter distributions of tanoak, Pacific madrone, and giant chinkapin sprout clumps. Western Journal of Applied Forestry, 7(4), 103-108.

King, James E. 1966. Site index curves for Douglas-fir in the pacific northwest. Weyerhaeuser Forestry Paper No. 8. Centralia, WA. Weyerhaeuser Forestry Research Center. 49p.

Krajicek, J.; Brinkman, K.; Gingrich, S. 1961. Crown competition – a measure of density. Forest Science. 7(1):35-42

Krumland, B. and Eng, H., 2005. Site Index Systems for Major Young-Growth Forest and Woodland Species in Northern California. California Forestry Report 4.

McDonald, Philip M. 1978. Silviculture-ecology of three native California hardwoods on high sites in north central California. Dissertation (Ph.D.), Oregon State University, Department of Forest Science, Corvallis. 309 p.

McDonald, Philip M.; Minore, Don; Atzet, Tom. 1983. Southwestern Oregon--northern California hardwoods. In: Burns, Russell M., compiler. Silvicultural systems for the major forest types of the United States. Agric. Handb. 445. Washington, DC: U.S. Department of Agriculture: 29-32.

McDonald, Philip M. 1990. Quercus kelloggii Newb. California Black Oak. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 1281-1299.

McDonald, Philip M. and Tappenier II, John C. 1990. Arbutus menziesii Pursh. Pacific madrone. In: Burns, Russell M.; Honkala, Barbara H., technical coordinators. Silvics of North America. Volume 2. Hardwoods. Agric. Handb. 654. Washington, DC: U.S. Department of Agriculture, Forest Service: 275-289.

Paine, D.P., and Hann, D.W. 1982. Maximum Crown Width Equations for Southwestern Oregon Tree Species. Res. Pap. 46. Corvallis, OR: Oregon State University, Forest Research Laboratory. 20 p.

Pillsbury, Norman H. and Kirkley, Michael L. 1984 Equations for Total, Wood, and saw-Log Volume for Thirteen California Hardwoods. Pacific Northwest Forest and Range Experiment Station Research Note PNW-414.

Porter, Dennis R. and Harry V. Wiant, Jr. 1965. Site Index Equations for Tanoak, Pacific Madrone, and Red Alder in the Redwood Region of Humboldt County, California. Journal of Forestry. pp 286-287.

Powers, Robert F. 1972. Site index curves for unmanaged stands of California black oak. Res. Note PSW-262. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 5p.

Powers, Robert F. and Oliver, William W. 1978. Site classification of ponderosa pine stands under stocking control in California. Research Paper PSW-128. Berkeley, CA: Forest Service, Pacific Southwest Forest and Range Experiment Station. 9p.

Rebain, Stephanie A. comp. 2010 (revised frequently). The Fire and Fuels Extension to the Forest Vegetation Simulator: Updated Model Documentation. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 379 p.

Reinhardt, Elizabeth; Crookston, Nicholas L. (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. Gen. Tech. Rep. RMRS-GTR-116. Ogden, UT: U.S. Department of Agriculture, Forest Service, Rocky Mountain Research Station. 209 p.

Stage, A. R. 1973. Prognosis Model for stand development. Res. Paper INT-137. Ogden, UT: U. S. Department of Agriculture, Forest Service, Intermountain Forest and Range Experiment Station. 32p.

USFS-R6 Sale Preparation and Valuation Section of Diameter and Volume Procedures - R6 Timber Cruise System. 1978.

Van Dyck, Michael G.; Smith-Mateja, Erin E., comps. 2000 (revised frequently). Keyword reference guide for the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center.

Wensel, L. C. and C. M. Olson. 1993. Tree Taper Models for Major Commercial California Conifers. Research Note No. 33. Northern Calif. Forest Yield Cooperative. Dept. of Forstry and Mgmt., Univ. of Calif., Berkeley. 28 pp.

Westfall, James A.; Coulston, John W.; Gray, Andrew N.; Shaw, John D.; Radtke, Philip J.; Walker, David M.; Weiskittel, Aaron R.; MacFarlane, David W.; Affleck, David L.R.; Zhao, Dehai; Temesgen, Hailemariam; Poudel, Krishna P.; Frank, Jereme M.; Prisley, Stephen P.; Wang, Yingfang; Sánchez Meador, Andrew J.; Auty, David; Domke, Grant M. 2024. A national-scale tree volume, biomass, and carbon modeling system for the United States. Gen. Tech. Rep. WO-104. Washington, DC: U.S. Department of Agriculture, Forest Service. 37 p.

Wilkinson, W. H., McDonald, P. M., & Morgan, P. 1997. Tanoak sprout development after cutting and burning in a shade environment. Western Journal of Applied Forestry, 12(1), 21-26.

Wykoff, W. R. 1990. A basal area increment model for individual conifers in the northern Rocky Mountains. For. Science 36(4): 1077-1104.

Wykoff, William R., Crookston, Nicholas L., and Stage, Albert R. 1982. User’s guide to the Stand Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: Forest Service, Intermountain Forest and Range Experiment Station. 112p.

# 11.0 Appendices

## 11.1 Appendix A. Distribution of Data Samples

The following tables contain distribution information of data used to fit species relationships in this variant’s geographic region (information from original variant overview).

**Table 11.1.1. Distribution of samples by National Forest, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **National Forest** | | | | **Hoopa Indian Reservation** | **Simpson Timber Company** | **Total Number of Observations** |
| **Klamath** | **Six Rivers** | **Trinity** | **Siskiyou** |
| Douglas-fir | 5 | 24 | 1 | 26 | 31 | 13 | 6502 |
| white fir | 6 | 18 | 2 | 29 | 45 | 0 | 297 |
| Pacific madrone | 1 | 1 | 0 | 1 | 92 | 6 | 467 |
| California black oak | 0 | 2 | 0 | 0 | 98 | 0 | 198 |
| tanoak | 0 | 1 | 0 | 1 | 63 | 35 | 2376 |
| ponderosa pine | 21 | 60 | 1 | 13 | 5 | 0 | 389 |

**Table 11.1.2. Distribution of samples for diameter breast high, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **Species** | **DBH Range** | | | | | |
| **0-5** | **5-10** | **10-15** | **15-20** | **20-25** | **25+** |
| Douglas-fir | 30 | 23 | 13 | 10 | 6 | 18 |
| white fir | 17 | 34 | 10 | 11 | 6 | 20 |
| Pacific madrone | 1 | 47 | 24 | 15 | 6 | 7 |
| California black oak | 0 | 49 | 30 | 9 | 6 | 7 |
| tanoak | 2 | 56 | 23 | 12 | 4 | 3 |
| ponderosa pine | 33 | 50 | 9 | 3 | 2 | 3 |

**Table 11.1.3. Distribution of samples by Crown Ratio group, expressed in whole percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Crown Code (1=1-10,2=11-20,…,9=81-100)** | | | | | | | | |
| **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| Douglas-fir | 1 | 6 | 11 | 15 | 12 | 10 | 9 | 10 | 26 |
| white fir | 2 | 9 | 16 | 17 | 12 | 10 | 11 | 10 | 12 |
| Pacific madrone | 10 | 24 | 27 | 17 | 11 | 7 | 3 | 1 | 1 |
| California black oak | 10 | 12 | 24 | 31 | 11 | 8 | 2 | 2 | 0 |
| tanoak | 3 | 11 | 24 | 20 | 14 | 12 | 9 | 4 | 2 |
| ponderosa pine | 1 | 5 | 10 | 9 | 9 | 19 | 22 | 16 | 8 |

**Table 11.1.4. Distribution of samples by Aspect Code, expressed in percent of total observations for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Aspect Code** | | | | | | | | |
| **North** | **North-east** | **East** | **South-east** | **South** | **South-west** | **West** | **North-west** | **Level** |
| Douglas-fir | 20 | 13 | 13 | 9 | 11 | 10 | 11 | 12 | 1 |
| white fir | 8 | 11 | 6 | 4 | 13 | 24 | 14 | 19 | 1 |
| Pacific madrone | 6 | 6 | 12 | 6 | 21 | 14 | 24 | 10 | 1 |
| California black oak | 2 | 8 | 2 | 10 | 20 | 20 | 24 | 14 | 0 |
| tanoak | 19 | 10 | 16 | 11 | 12 | 10 | 11 | 9 | 1 |
| ponderosa pine | 19 | 18 | 11 | 14 | 15 | 9 | 6 | 7 | 0 |

**Table 11.1.5. Distribution of samples by total stand basal area per acre, expressed in percent of total for each species.**

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Basal Area** | | | | | | | | |
| **0-50** | **50-100** | **100-150** | **150-200** | **200-250** | **250-300** | **300-350** | **350-400** | **<u>></u> 400** |
| Douglas-fir | 40 | 5 | 5 | 8 | 8 | 5 | 6 | 5 | 17 |
| white fir | 21 | 8 | 9 | 1 | 4 | 20 | 16 | 7 | 12 |
| Pacific madrone | 2 | 1 | 3 | 7 | 12 | 5 | 10 | 15 | 46 |
| California black oak | 1 | 1 | 1 | 10 | 1 | 20 | 3 | 27 | 35 |
| tanoak | 5 | 6 | 6 | 13 | 10 | 4 | 9 | 7 | 40 |
| ponderosa pine | 68 | 18 | 4 | 2 | 1 | 1 | 1 | 0 | 5 |

**Table 11.1.6. Distribution of samples by diameter growth, expressed in percent for each species.**

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Species** | **Diameter Growth (inches/5 years)** | | | | | | | |
| **< 0.5** | **0.5-1.0** | **1.0-1.5** | **1.5-2.0** | **2.0-2.5** | **2.5-3.0** | **3.0-3.5** | **<u>></u> 3.5** |
| Douglas-fir | 24 | 24 | 19 | 17 | 9 | 4 | 2 | 1 |
| white fir | 38 | 32 | 19 | 6 | 4 | 1 | 0 | 1 |
| Pacific madrone | 68 | 26 | 5 | 1 | 0 | 0 | 0 | 0 |
| California black oak | 87 | 12 | 1 | 0 | 0 | 0 | 0 | 0 |
| tanoak | 50 | 36 | 11 | 2 | 1 | 1 | 1 | 1 |
| ponderosa pine | 8 | 19 | 30 | 22 | 12 | 5 | 2 | 1 |

**Table 11.1.7. Distribution of samples by elevation, expressed in percent for each species.**

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Species** | **Elevation** | | | | |
| **< 1000** | **1000-2000** | **2000-3000** | **3000-4000** | **> 4000** |
| Douglas-fir | 22 | 23 | 28 | 21 | 6 |
| white fir | 0 | 0 | 1 | 12 | 84 |
| Pacific madrone | 15 | 25 | 44 | 16 | 1 |
| California black oak | 44 | 41 | 12 | 2 | 2 |
| tanoak | 40 | 22 | 32 | 5 | 1 |
| ponderosa pine | 1 | 2 | 30 | 39 | 27 |

## 11.2 Appendix B. Plant Association Codes

**Table 11.2.1 Region 5 Plant association codes recognized in the NC variant.**

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

**Table 11.2.2 Region 6 Plant association codes recognized in the NC variant.**

| **FVS Sequence Number = Plant Association Species Type** | **Alpha Code** | **Site Species** | **Site Index\*** | **SDI Max\*** | **Source\*** | **Reference** |
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
| 426 = TSHE-CHLA  Western hemlock-Port-Orford-cedar | CHC111 | DF | 117 | 1215 | C | Aztet and Wheeler (1984) |
| 427 = TSHE-THPL/HIGH ELEV  Western hemlock-western redcedar/high elevation | CHC412 | DF | 108 | 945 | C | Aztet and Wheeler (1984) |
| 428 = TSHE-THPL  Western hemlock-western redcedar | CHC461 | DF | 146 | 1105 | C | Aztet and Wheeler (1984) |
| 429 = TSHE-ABCO  Western hemlock-white fir | CHC611 | DF | 119 | 890 | C | Aztet and Wheeler (1984) |
| 430 = TSHE-UMCA  Western hemlock-California laurel | CHH111 | DF | 106 | 650 | C | Aztet and Wheeler (1984) |
| 431 = TSHE-QUSA  Western hemlock-Sadler oak | CHH511 | DF | 108 | 1152 | H | Aztet and Wheeler (1984) |
| 432 = TSHE/GASH  Western hemlock/salal | CHS131 | DF | 61 | 1050 | C | Aztet and Wheeler (1984) |
| 433 = TSHE/RHMA  Western hemlock/Pacific rhododendron | CHS331 | DF | 102 | 1145 | C | Aztet and Wheeler (1984) |
| 434 = TSME/POPU  Mountain hemlock/skunkleaf polemonium | CMF211 | RF | 74 | 555 | C | Aztet and Wheeler (1984) |
| 435 = PIPO-PSME  Ponderosa pine-Douglas-fir | CPC411 | DF | 76 | 720 | H | Aztet and Wheeler (1984) |
| 436 = PIJE-PIMO  Jeffrey pine-western white pine | CPC511 | PP | 52 | 420 | C | Aztet and Wheeler (1984) |
| 437 = PIJE/FEID  Jeffrey pine/Idaho fescue | CPG141 | PP | 57 | 200 | C | Aztet and Wheeler (1984) |
| 438 = PIJE-QUVA  Jeffrey pine-huckleberry oak | CPH411 | PP | 60 | 470 | C | Aztet and Wheeler (1984) |
| 439 = PIJE/CEPU  Jeffrey pine/dwarf ceanothus | CPS321 | PP | 58 | 364 | H | Aztet and Wheeler (1984) |
| 440 = PIJE/GRASS  Jeffrey pine/grass | CPS611 | PP | 57 | 340 | H | Aztet and Wheeler (1984) |
| 441 = PIMO/XETE  Western white pine/beargrass | CQF111 | WF | 33 | 436 | H | Aztet and Wheeler (1984) |
| 442 = ABMAS/POPU  Shasta red fir/skunkleaf polemonium | CRF211 | RF | 57 | 675 | C | Aztet and Wheeler (1984) |
| 443 = ABMAS/SHEEP  Shasta red fir/sheep(grazing destroyed understory plants) | CRF311 | RF | 50 | 319 | H | Aztet and Wheeler (1984) |
| 444 = ABMAS-QUSA  Shasta red fir-Sadler oak | CRH111 | RF | 81 | 470 | C | Aztet and Wheeler (1984) |
| 445 = ABMAS/SYMO  Shasta red fir/creeping snowberry | CRS211 | RF | 91 | 755 | C | Aztet and Wheeler (1984) |
| 446 = CHLA-QUVA  Port-Orford-cedar-huckleberry oak | CTH111 | DF | 87 | 1309 | H | Aztet and Wheeler (1984) |
| 447 = CHLA-ACMA  Port-Orford-cedar-bigleaf maple | CTH211 | DF | 87 | 760 | C | Aztet and Wheeler (1984) |
| 448 = CHLA/BENE/ACTR  Port-Orford-cedar/dwarf Oregongrape/vanillaleaf | CTS111 | DF | 85 | 1348 | H | Aztet and Wheeler (1984) |
| 449 = CHLA/BENE/LIBOL  Port-Orford-cedar/dwarf Oregongrape/western twinflower | CTS112 | DF | 92 | 370 | C | Aztet and Wheeler (1984) |
| 450 = CHLA/GASH  Port-Orford-cedar/salal | CTS211 | DF | 83 | 990 | C | Aztet and Wheeler (1984) |
| 451 = CHLA/GABU  Port-Orford-cedar/box-leaved silktassle | CTS311 | DF | 87 | 660 | C | Aztet and Wheeler (1984) |
| 452 = ABCO-PSME  White fir-Douglas-fir | CWC221 | DF | 92 | 815 | C | Aztet and Wheeler (1984) |
| 453 = ABCO-PSME/BENE  White fir-Douglas-fir/dwarf Oregongrape | CWC231 | DF | 95 | 785 | C | Aztet and Wheeler (1984) |
| 454 = ABCO-PSME/HODI  White fir-Douglas-fir/creambush oceanspray | CWC232 | DF | 89 | 675 | C | Aztet and Wheeler (1984) |
| 455 = ABCO-PSME/DEPAUPERATE  White fir-Douglas-fir/depauperate | CWC233 | DF | 78 | 988 | H | Aztet and Wheeler (1984) |
| 456 = ABCO-PIPO  White fir-ponderosa pine | CWC241 | DF | 84 | 930 | C | Aztet and Wheeler (1984) |
| 457 = ABCO-PIBR/VAME  White fir-Brewer spruce/thin-leaved huckleberry | CWC521 | DF | 57 | 899 | H | Aztet and Wheeler (1984) |
| 458 = ABCO-PIBR/GAOV  White fir-Brewer spruce/slender salal | CWC522 | DF | 95 | 874 | H | Aztet and Wheeler (1984) |
| 459 = ABCO-PIBR/CHUM  White fir-Brewer spruce/western prince's-pine | CWC523 | DF | 69 | 335 | C | Aztet and Wheeler (1984) |
| 460 = ABCO-CHLA  White fir-Port-Orford-cedar | CWC611 | DF | 99 | 1399 | H | Aztet and Wheeler (1984) |
| 461 = ABCO-CHLA/DEPAUPERATE  White fir-Port-Orford-cedar/depauperate | CWC612 | DF | 99 | 1399 | H | Aztet and Wheeler (1984) |
| 462 = ABCO-ABMAS/RIBES  White fir-Shasta red fir/currant | CWC721 | WF | 77 | 660 | C | Aztet and Wheeler (1984) |
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
| 478 = LIDE3-CHLA  Tanoak-Port-Orford-cedar | HTC311 | DF | 98 | 890 | C | Aztet and Wheeler (1984) |
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