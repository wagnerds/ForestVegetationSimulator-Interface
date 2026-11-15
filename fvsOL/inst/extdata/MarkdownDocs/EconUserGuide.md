USER GUIDE TO THE FVS ECONOMIC

EXTENSION (ECON)

Fred C. Martin

United States Department of Agriculture

Forest Service

Forest Management Service Center

June, 2009

## REFERENCE

Martin, Fred C. 2009. User’s Guide to the FVS Economic Extension (ECON). Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 43p.

## ABSTRACT

The Economic Extension (ECON) to the Forest Vegetation Simulator (FVS) computes economic measures during FVS simulations to aid evaluation of silvicultural alternatives. These measures include undiscounted and discounted costs and revenues, benefit-cost ratio, internal rate of return, present net value, realizable rate of return, soil expectation value, value of forest, and value of trees. ECON provides functionality for examining multiple harvest regimes within a single simulation, permits scheduling activities based on economic measures with the Event Monitor, and reports revenues based on log dimensions.

## ACKNOWLEDGEMENTS

ECON requirements were conceptualized by Nicholas Crookston, Mark Wiitala (US Forest Service, Rocky Mountain and Pacific Northwest Experiment Stations, respectively), and Bill Barber, James Hotvedt, and Fred Martin (WA Department of Natural Resources). David L. Renner, Forestry Consultant, Charis Consulting, provided initial software and demonstrated a proof-of-concept. Bryan Lu assisted in developing calculation algorithms and re-writing computer code. Bill Barber and James Hotvedt provided detailed reviews of the user’s manual and operating procedures.

## AUTHOR

Fred C. Martin is a forest biometrician with the Washington State Department of Natural Resources. He received his B.S. (1970), M.S. (1979), and Ph.D. (1987) in forest sciences from the University of Montana. Previous to joining the DNR in 1987, he held positions with private industry, county government, an Indian tribe, the US Forest Service, and the University of Montana.

## Contact Information

Fred Martin
WA Dept. Natural Resources
1111 Washington St. SE
P.O. Box 47016
Olympia, WA 98504-7016

Phone: 360.902.1361
E-Mail: fred.martin@dnr.wa.gov

## TABLE OF CONTENTS

[REFERENCE 2](#_Toc233020923)

[ABSTRACT 2](#_Toc233020924)

[ACKNOWLEDGEMENTS 2](#_Toc233020925)

[AUTHOR 2](#_Toc233020926)

[Contact Information 2](#_Toc233020927)

[TABLE OF CONTENTS 3](#_Toc233020928)

[I. INTRODUCTION 5](#_Toc233020929)

[II. EXAMPLES AND MOTIVATING STATES 5](#_Toc233020930)

[INTRODUCTORY EXAMPLE 5](#_Toc233020931)

[MOTIVATING ECONOMIC QUESTIONS 7](#_Toc233020932)

[Example 1 – when is the economically efficient harvest time? 8](#_Toc233020933)

[Example 2 – what is the value of forestland for timber production? 10](#_Toc233020934)

[Example 3 – when should an existing stand be replaced with a future prescription? 11](#_Toc233020935)

[Example 4 – what is the soil expectation value that maintains a perpetual condition? 12](#_Toc233020936)

[Example 5 – what is the value of standing trees separate from the land itself? 13](#_Toc233020937)

[III. OUTPUTS 14](#_Toc233020938)

[SUMMARY MEASURES 14](#_Toc233020939)

[Undiscounted Costs 15](#_Toc233020940)

[Undiscounted Revenues 15](#_Toc233020941)

[Present Value Costs 15](#_Toc233020942)

[Present Value Revenues 15](#_Toc233020943)

[Present Net Value (PNV) 15](#_Toc233020944)

[Internal Rate of Return 16](#_Toc233020945)

[Benefit-Cost Ratio (B/C) 16](#_Toc233020946)

[Realizable Rate of Return 16](#_Toc233020947)

[Soil Expectation Value (SEV) 17](#_Toc233020948)

[Value of Forest 17](#_Toc233020949)

[Value of Trees 17](#_Toc233020950)

[Harvest Volumes 18](#_Toc233020951)

[HARVEST VOLUMES AND GROSS VALUES 20](#_Toc233020952)

[IV. PROGRAM FEATURES 22](#_Toc233020953)

[PRETEND HARVESTS 22](#_Toc233020954)

[COMMERCIAL VERSUS PRE-COMMERCIAL HARVEST 22](#_Toc233020955)

[DISCOUNT RATE 22](#_Toc233020956)

[VALUE RATE CHANGES AND DURATIONS 22](#_Toc233020957)

[VOLUME CALCULATION AND VALUATION 23](#_Toc233020958)

[UNITS OF MEASURE 25](#_Toc233020959)

[SPECIFYING MULTIPLE INVESTMENT PERIODS 25](#_Toc233020960)

[V. KEYWORDS AND CONTROL VARIABLES 25](#_Toc233020961)

[KEYWORDS 25](#_Toc233020962)

[ANNUCST (Annual Cost) 26](#_Toc233020963)

[ANNURVN (Annual Revenue) 26](#_Toc233020964)

[BURNCST (Burn Site Prep Cost) 26](#_Toc233020965)

[ECON (Economic Extension Model Initialization) 27](#_Toc233020966)

[END (End of ECON Keywords) 27](#_Toc233020967)

[HRVFXCST (Harvest Fixed Cost) 27](#_Toc233020968)

[HRVVRCST (Harvest Variable Cost) 27](#_Toc233020969)

[HRVRVN (Harvest Revenue) 28](#_Toc233020970)

[LBSCFV (Pounds per Harvested Cubic-Foot Volume) 29](#_Toc233020971)

[MECHCST (Mechanical Site Prep Cost) 30](#_Toc233020972)

[NOTABLE (Suppress ECON Table Output) 30](#_Toc233020973)

[PCTFXCST (Pre-Commercial Thinning Fixed Cost) 30](#_Toc233020974)

[PCTSPEC (Pre-Commercial Thinning Specification) 31](#_Toc233020975)

[PCTVRCST (Pre-Commercial Thinning Variable Cost) 31](#_Toc233020976)

[PLANTCST (Planting Cost) 32](#_Toc233020977)

[PRETEND (Pretend to Simulate a Harvest) 32](#_Toc233020978)

[SPECCST (Special Cost) 33](#_Toc233020979)

[SPECRVN (Special Revenue) 33](#_Toc233020980)

[STRTECON (ECON Start or Re-initialization Year) 34](#_Toc233020981)

[EVENT MONITOR VARIABLES 35](#_Toc233020982)

[VI. EXAMPLE KEYWORD FILES 36](#_Toc233020983)

[Example 1A keywords – timber management objective 36](#_Toc233020984)

[Example 1B keywords – continuous forest-cover management objective 37](#_Toc233020985)

[Example 2 keywords – calculate SEV 38](#_Toc233020986)

[Example 3 keywords – preferred time to initiate future perpetual prescription 39](#_Toc233020987)

[Example 4 keywords – dynamically initialize a preferred perpetual prescription 39](#_Toc233020988)

[Example 5 keywords – value immature timber or “reprod” 41](#_Toc233020989)

[VII. REFERENCES 42](#_Toc233020990)

## I. INTRODUCTION

Economic measures of forest management activities are important for evaluating alternative silvicultural prescriptions, including cost-efficient alternatives for restoring, enhancing, or maintaining wildlife habitat. Two computer programs, CHEAPO (Medema and Hatch 1982) and CHEAPO II (Horn et al., 1986) were developed during the 1980’s in an effort to quantify economic impacts. CHEAPO and CHEAPO II were designed to run after completion of an FVS simulation. A drawback of the CHEAPO systems was the lack of interaction with the biological and management components contained within FVS and its extensions. This lack of interaction made economic analysis of silvicultural activities excessively time-consuming and cumbersome. Renner (2001) linked CHEAPO II with FVS demonstrating a proof-of-concept for an integrated approach (Renner and Martin, 2002). But the CHEAPO II code base was found deficient, prompting restructuring and re-writing. With the advent of ECON, economic measures may now be examined and evaluated as part of an FVS simulation.

ECON computes economic measures for the costs and revenues of harvests and regeneration conducted by FVS. It also allows for annual and periodic costs and revenues that need not be directly related to timber management. The integration of ECON with FVS permits: 1) the ability to evaluate multiple harvest scenarios within a single simulation, 2) the ability to schedule management activities with the Event Monitor (Crookston, 1990) based on the values of economic measures, 3) the ability to dynamically initiate and value future management prescriptions, and 4) the ability to compute special costs and revenues in response to simulated events. In addition, ECON provides valuation based on log diameters, not just tree sizes, and valuation of forestland (land and timber together) and immature timber (separate from the land).

This user guide provides information necessary for using ECON, including description of economic measures and their calculation, and documentation of keywords and control variables. Included are examples demonstrating ECON use and features. The examples are illustrative only; they are not intended as tutorials for economic analysis. Users in need of economic fundamentals or seeking analysis guidance should consult one or more of the listed references. This guide assumes the reader has a basic knowledge of FVS operation (Wykoff and others 1982, Dixon 2002). Users familiar with economic analysis may wish to go directly to the section on Keywords and Control Variables, while others interested in evaluating ECON functionality may wish to read sections on Examples and Motivating States and Sample Outputs. Details on ECON operations are given in the Program Features section.

## II. EXAMPLES AND MOTIVATING STATES

The following examples illustrate the integration of ECON with FVS and the economic questions that motivated ECON development.

### INTRODUCTORY EXAMPLE

The example (based on Renner, 2001) shows the use of FVS, the Fire and Fuels Extension (FFE, Reinhardt and Crookston, 2003), and ECON to evaluate the impacts of alternative silvicultural prescriptions. Two alternative prescriptions are evaluated for a young, mixed-species stand. The first prescription (No Fuel Treatment) consists of thinning at 10, 30, 50, and 80 years, with wildfire simulated in year 60. The second prescription (Fuel Treatment) includes the same thinning sequence and wildfire but includes pile and burning fuel treatments following thinning at 10 and 30 years. Prescriptions were modeled for 90 years using ten-year cycles. Outputs for each prescription include standing inventory (Figure 1) from the base FVS model (Wykoff and others 1982), surface fuels (Figure 2) from the Fire and Fuels Extension (FFE, Reinhardt and Crookston 2003), and net present value (figure 3) from the ECON Extension.

![](data:image/x-emf;base64...)

Figure 1. Standing inventory for Fuel Treatment and No Fuel Treatment alternative prescriptions.

Surface fuel loads were computed with the FFE for both prescriptions including the simulated wildfire in year 60. The Fuel Treatment prescription reduced the fuel loads generated by the thinning conducted between years 10-19 and 30-39. The wildfire substantially reduced surface fuels in both prescriptions, but reduced standing inventory only slightly (Figure 1). Fuel loads increased for both prescriptions between years 80-89 due to thinning in year 80.

Figure 2. Total surface fuels for Fuel Treatment and No Fuel Treatment alternative prescriptions.

![](data:image/x-emf;base64...)

Present net value (PNV) based on a 5% real discount rate was used to evaluate the economic efficiency of the silvicultural alternatives. PNV is initially zero as no revenues or costs have yet occurred (Figure 3). PNV for both prescriptions is negative for the first fifty years because the costs of stand activities exceed thing revenues. After fifty years, harvested volume is sufficient to raise PNV for the No Fuel Treatment above zero, but the high costs of the Fuel Treatment prescription always exceeds harvest revenue. Differences in PNV reflect higher treatment costs for the Fuel Treatment prescription, rather than differences in stand productivity; the two prescriptions produced nearly identical harvestable volume over time (Figure 1).

Figure 3. PNV of Fuel Treatment and No Fuel Treatment alternative prescriptions.

![](data:image/x-emf;base64...)

The Fuel Treatment prescription appeared to have little effect on reducing long-term surface fuel loading or protecting timber from wildfire. Managers might conclude that the Fuel Treatment prescription was both economically and biologically inefficient as a means of wildfire protection.

### MOTIVATING ECONOMIC QUESTIONS

Although ECON has many potential uses, the following five economic questions motivated development.

1. Given an existing stand, when is the economically efficient harvest time?
2. What is the value of forestland for timber production?
3. Given an existing stand and its forestland value, when is the economically efficient harvest time?
4. Given harvest deferral of an existing stand until a target condition is achieved, what is the forestland value for timber production that maintains the target condition?
5. Given an existing immature stand having a known land value, what is the value of the immature trees (“reprod” value)?

Examples exploring each motivating question are given below. FVS keyword files that produced these examples are listed in Section VI. Some examples may be surprising to those accustomed to strict even-aged management, in that neither harvestable volume nor value increase in a monotonic manner. Further, harvestable volumes may be substantially less than standing inventory due to non-timber management objectives or constraints, such as reserve trees for wildlife habitat enhancement or unstable slope protection.

All of the examples use the functionality of the PRETEND keyword, (detailed in Sections IV and V), which allows hypothetical harvests to occur. A hypothetical (or “pretend”) harvest identifies the trees that could be harvested but does not remove them from the FVS simulation; hence the stand develops “as if” the harvest had not occurred. This allows potentially harvestable trees to be valued without affecting the simulation. Such valuation is reported only in the cycle that the PRETEND keyword is active; “pretend” values are not accumulated to later cycles. In this way, hypothetical harvests can be conducted over time, wherein each cycle’s harvest represents a mutually exclusive alternative independent from other cycles. All examples were simulated with the Inland Empire variant of FVS and use a four percent real discount rate.

#### Example 1 – when is the economically efficient harvest time?

Given an existing stand, when is the most economically efficient time to harvest? The following two examples illustrate this decision question. They each assume an existing pole-sized stand with 400 trees per acre. The PRETEND keyword is used to simulate “pretend” harvests in each FVS ten-year cycle. In these examples the economic influence of future stands is not considered; only cash flows associated with the current stand are examined. Example 3 illustrates the impact of both current and future stand cash flows on economic valuations.

##### Example 1A

This harvest prescription calls for harvesting all trees seven-inch diameter at breast-height (DBH) and larger, except for sixteen reserve trees per acre. The reserve trees are distributed across the existing diameter distribution of trees seven-inch DBH and larger. One hundred year simulation results are listed in Table 1A. FVS provides several measures for evaluating harvest timing, including density, stand volume, growth, and mortality (columns 1-6). ECON provides additional decision criteria (columns 8-11). Based on PNV (column 8), the economically efficient harvest time for this stand is 2044. Note that the preferred economic harvest time is near culmination of accretion (column 5), but before maximum volume (column 4). PNV declines after 2044 as gains in stand growth fail to keep pace with the time-value of money as specified by the four percent discount rate. In addition to PNV, ECON computes internal rate of return, benefit cost (B/C) ratio, and realizable rate of return (columns 9-11). The economically efficient harvest time varies depending on the economic decision criteria, but PNV is often the preferred criterion (Davis and Johnson, 1986, p. 315). The internal rate of return may be an inappropriate decision criterion for this example because the analysis was initiated after stand initiation (Bullard and Straka, 1998, p. 4.14). Users unfamiliar with the different economic measures should consult one or more of the references before deciding on an economic decision criterion.

Because the PRETEND keyword was active for all cycles, harvest costs and revenues are “local” to each cycle, i.e., harvest cash flows are not accumulated across cycles. PNV as of the end of each FVS cycle (column 8) reflects a “pretend” harvest during the cycle independent of harvests in other cycles. Economic measures are based on the “pretend” harvest volume (column 7), which is less than total volume (column 4), due to reserve trees. Like the FVS Summary Table, ECON results for a cycle are labeled with the beginning year of the cycle, e.g., activities occurring between 2014 and 2023 are displayed in 2014.

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Trees  /Acre  (2) | Basal  Area/  Acre  (3) | Total  Bd Ft  /Acre  (4) | Accretion  Cu Ft/  Acre/Yr  (5) | Mortality  Cu Ft/  Acre/Yr  (6) | Harvest  Bd Ft  /Acre  (7) | PNV  (8) | Internal  Rate of  Return  (9) | B/C  Ratio  (10) | Realizable  Rate of  Return  (11) |
| 2004 | 400 | 127 | 19,300 | 122 | 24 | 17,005 | 221 | >50.0 | 1.2 | 5.9 |
| 2014 | 305 | 148 | 24,765 | 124 | 32 | 21,678 | 241 | 46.7 | 1.3 | 5.2 |
| 2024 | 241 | 166 | 29,836 | 118 | 43 | 26,248 | 298 | 21.2 | 1.4 | 5.2 |
| 2034 | 197 | 179 | 34,619 | 124 | 57 | 30,438 | 370 | 14.8 | 1.7 | 5.4 |
| 2044 | 163 | 188 | 39,049 | 123 | 60 | 33,937 | 380 | 11.4 | 2.0 | 5.4 |
| 2054 | 139 | 195 | 43,165 | 124 | 66 | 36,923 | 363 | 9.5 | 2.2 | 5.4 |
| 2064 | 120 | 201 | 47,320 | 111 | 72 | 40,237 | 322 | 8.1 | 2.4 | 5.3 |
| 2074 | 105 | 203 | 50,665 | 108 | 81 | 42,366 | 249 | 7.0 | 2.4 | 5.2 |
| 2084 | 92 | 202 | 53,006 | 104 | 81 | 43,360 | 190 | 6.2 | 2.4 | 5.0 |
| 2094 | 81 | 201 | 55,728 | 98 | 82 | 44,368 | 135 | 5.6 | 2.4 | 4.8 |

##### Table 1A. Example 1A results evaluating harvest timing for an existing stand.

##### Example 1B

The primary objective in this example is to maintain continuous tree cover consisting of large diameter trees and residual stocking across the diameter distribution. The harvest prescription calls for harvesting 90% of the basal area between strict diameter limits, with the maximum allowable harvest diameter increasing over time. For example, in 2004 90% of the basal area in trees between six and sixteen inches DBH can be harvested, whereas in 2054, 90% of the basal area in trees six to twenty-two inches DBH can be harvested. Trees less than or greater than the DBH limits are reserved from harvest in order to retain residual stocking of both understory and large trees. This prescription, although contrived, illustrates economic effects when timber harvest is not the primary objective.

Simulation results (Table 1B) are the same as Example 1A for columns 1-6, while columns 7-11 show results for the “pretend” harvests for this prescription. Harvest volumes are low in early years relative to total volume, ranging from a low of 48% of total volume in 2044 to a high of 80% in 2094 (percentage comparisons of columns 4 and 7). Step-wise changes in leave tree diameters over time resulted in PNV (column 8) initially increasing as the stand increased in total volume then decreasing in 2034 as large trees were reserved from harvest. In 2054 PNV again increased as thr reserve-tree diameter limit increased. In 2074, PNV again declined as harvest increases failed to keep pace with the four percent discount rate. As in Example 1A, PNV, internal rate of return, B/C ratio, and realizable rate provide different results (Davis and Johnson, 1986, pp. 315-324, discuss comparison and use of these different criteria). Note that in this example, as compared to Example 1A, the economic efficient harvest time based on PNV (year 2064) occurs after culmination of accretion (column 5), and near maximum basal area (column 3).

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Trees  /Acre  (2) | Basal  Area/  Acre  (3) | Total  Bd Ft  /Acre  (4) | Accretion  Cu Ft/  Acre/Yr  (5) | Mortality  Cu Ft/  Acre/Yr  (6) | Harvest  Bd Ft  /Acre  (7) | PNV  (8) | Internal  Rate of  Return  (9) | B/C  Ratio  (10) | Realizable  Rate of  Return  (11) |
| 2004 | 400 | 127 | 19,300 | 122 | 24 | 11,112 | 31 | >50.0 | 1.0 | 4.4 |
| 2014 | 305 | 148 | 24,765 | 124 | 32 | 14,177 | 106 | 34.5 | 1.1 | 4.7 |
| 2024 | 241 | 166 | 29,836 | 118 | 43 | 16,545 | 131 | 15.9 | 1.2 | 4.7 |
| 2034 | 197 | 179 | 34,619 | 124 | 57 | 18,826 | 100 | 9.8 | 1.2 | 4.5 |
| 2044 | 163 | 188 | 39,049 | 123 | 60 | 18,588 | 60 | 6.7 | 1.2 | 4.4 |
| 2054 | 139 | 195 | 43,165 | 124 | 66 | 24,834 | 95 | 6.7 | 1.4 | 4.5 |
| 2064 | 120 | 201 | 47,320 | 111 | 72 | 31,159 | 142 | 6.7 | 1.6 | 4.7 |
| 2074 | 105 | 203 | 50,665 | 108 | 81 | 37,585 | 135 | 6.1 | 1.7 | 4.7 |
| 2084 | 92 | 202 | 53,006 | 104 | 81 | 39,683 | 100 | 5.5 | 1.6 | 4.6 |
| 2094 | 81 | 201 | 55,728 | 98 | 82 | 44,836 | 79 | 5.1 | 1.6 | 4.5 |

##### Table 1B. Example 1B results evaluating harvest timing for an existing stand.

#### Example 2 – what is the value of forestland for timber production?

Given bare ground or a residual stand, what is the soil expectation value (SEV) of a perpetually repeating series of stand treatments? The following example uses SEV to illustrate differences among management prescriptions that have the same initial conditions but differ in the timing and intensity of final harvest. Initial conditions for this example are a residual stand containing sixteen trees per acre ranging from five to twenty-one inches DBH that is planted and naturally regenerated followed by a commercial thinning in 2034. Alternative prescriptions are simulated using the PRETEND keyword beginning in 2044. Each cycle after 2034 represents an alternative harvest prescription designed to preserve sufficient trees to replicate and perpetuate the initial stand condition. That is, each “pretend” cycle is a mutually exclusive prescription, e.g., the stand can be managed as a repeating series of 80-year cutting-cycle stands or a repeating series of 90-year cutting-cycles, but not both. The SEV at each cycle is based on the costs and revenues from the initial condition plus the “pretend” harvest for that cycle. Because the PRETEND keyword is active, harvest costs and revenues from the “pretend” management prescriptions are not accumulated between cycles; they are valued only in their respective cycles. The SEV at each time period is the present net value of this land parcel to produce like-managed stands in perpetuity.

The most economically efficient management prescription is the one with the highest SEV, year 2064 (column 10, Table 2). PNV (column 9) was greater in 2074 than 2064; the higher SEV in 2064 results from the shorter investment period (80 years) over which the “2064 prescription” perpetually repeats. Differences in harvested versus total board-foot volume (columns 8 versus 5) reflect reservations for maintaining initial stand structure (the sixteen reserve trees). The differences between harvested and total volume decreases over time as larger trees become available for harvest. Negative SEV values prior to 2044 result from planting and other initiating management activities.

Simulating different harvest prescriptions each cycle with the PRETEND keyword provides information (SEV) for valuing management prescriptions that have different time lengths or rotation ages. Although contrived, this example shows how multiple prescriptions can be simulated in a single FVS simulation. The process used in this example is similar to that needed for valuing uneven-aged management harvests under alternative entry periods.

|  |  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Investment  Period  (2) | Trees  /Acre  (3) | Basal  Area/  Acre  (4) | Total  Bd Ft  /Acre  (5) | Accretion  Cu Ft  /Acre/Yr  (6) | Mortality  Cu Ft/  Acre/Yr  (7) | Harvest  Bd Ft  /Acre  (8) | PNV  (9) | SEV  (10) | Internal  Rate of  Return  (11) |
| 2004 | 10 | 16 | 14 | 2,350 | 18 | 2 | 0 | -68 | -209 |  |
| 2014 | 20 | 1,429 | 20 | 3,302 | 49 | 0 | 0 | -76 | -141 |  |
| 2024 | 30 | 1,838 | 47 | 4,468 | 144 | 2 | 0 | -80 | -116 |  |
| 2034 | 40 | 1,405 | 117 | 7,667 | 71 | 2 | 1,640 | -96 | -122 | <0.0 |
| 2044 | 50 | 127 | 59 | 9,690 | 90 | 5 | 7,230 | 101 | 118 | 6.2 |
| 2054 | 60 | 117 | 82 | 14,040 | 107 | 8 | 10,609 | 114 | 126 | 5.9 |
| 2064 | 70 | 110 | 107 | 19,156 | 123 | 14 | 14,728 | 119 | 127 | 5.6 |
| 2074 | 80 | 104 | 131 | 25,301 | 143 | 22 | 19,905 | 120 | 125 | 5.3 |
| 2084 | 90 | 98 | 156 | 32,594 | 158 | 30 | 26,198 | 112 | 116 | 5.1 |
| 2094 | 100 | 93 | 180 | 40,638 | 164 | 40 | 33,059 | 96 | 98 | 4.9 |

##### Table 2. Example 2 results using SEV to evaluate alternative management prescriptions.

#### Example 3 – when should an existing stand be replaced with a future prescription?

Given an existing stand and a known soil expectation value (SEV) for a desired future repeating management prescription, determine the economically efficient time for harvesting the current stand. Although ignored in Examples 1A and 1B, assessing the harvest date of a current stand should consider the “opportunity cost” of delaying initiation of a future prescription. "Value of forest" is the measure used to identify the economically efficient time to convert the existing stand to the desired future repeating management prescription. “Value of forest” is the sum of the PNV for each cycle plus the discounted SEV for the future management prescription. It provides a “normalized” measure for evaluating mutually exclusive alternatives of different length and size (Davis and Johnson, 1987, pp. 317-320). The process used for this decision question is similar to that required for evaluating the forest value of a perpetual uneven-aged management prescription that is “off cycle” (Bullard and Straka, 1998), i.e., the SEV of the perpetual prescription is known, but the scheduled entry time for the current stand is in the middle of a cutting cycle.

This example uses the stand and prescription of Example 1A above, and the SEV ($127) determined in Example 2 for the desired future prescription. Results (Table 3) are the same as in Example 1A, but an additional economic measure, “value of forest,” is calculated. SEV ($127) is discounted for the number of years until it can be implemented (the investment period, column 2) to account for postponing the initiation of the future perpetual management prescription. Results show that the current stand should be harvested in 2034 in order to achieve an economically timely conversion to the desired future management program. Note that maximum PNV occurs in 2044 (column 7), ten years later than the maximum “value of forest;” indicating that opportunity costs, i.e., the cost of delaying future management actions, should be considered.

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Investment  Period  (2) | Trees  /Acre  (3) | Basal  Area/  Acre  (4) | Total  Bd Ft  /Acre  (5) | Harvest  Bd Ft/  Acre  (6) | PNV  (7) | Value of  Forest  (8) |
| 2004 | 10 | 400 | 127 | 19,300 | 17,006 | 221 | 307 |
| 2014 | 20 | 305 | 148 | 24,765 | 21,678 | 241 | 299 |
| 2024 | 30 | 241 | 166 | 29,836 | 26,248 | 298 | 337 |
| 2034 | 40 | 197 | 179 | 34,619 | 30,438 | 370 | 398 |
| 2044 | 50 | 163 | 188 | 39,049 | 33,937 | 380 | 397 |
| 2054 | 60 | 139 | 195 | 43,165 | 36,923 | 363 | 375 |
| 2064 | 70 | 120 | 201 | 47,320 | 40,237 | 322 | 331 |
| 2074 | 80 | 105 | 203 | 50,665 | 42,366 | 249 | 254 |
| 2084 | 90 | 92 | 202 | 53,006 | 43,360 | 190 | 194 |
| 2094 | 100 | 81 | 201 | 55,728 | 44,368 | 135 | 138 |

##### Table 3. Example 3 results using “value of forest” for assessing preferred harvest time.

#### Example 4 – what is the soil expectation value that maintains a perpetual condition?

Given harvest deferral of a stand until a structural condition is achieved, what is the soil expectation value for timber production that will maintain the desired structural components? In this example an existing stand is simulated until a specified target condition is attained, and in response, the current stand is harvested and a set of future management prescriptions are evaluated. The Event Monitor is used to monitor stand conditions over time and to dynamically schedule execution of FVS and ECON keywords.

Initial stand conditions are those described for Example 1A (400 pole-size trees per acre). The existing stand prescription is to harvest all but the sixteen largest trees when 10% of the trees in the stand reach 21” DBH and larger. The Event Monitor tracks stand development and to determine when the target condition has been met, whereupon FVS harvest keywords are executed. Upon harvest, the Event Monitor “triggers” activation of keywords that initiate a series of future management prescriptions. These future prescriptions consist of regenerating the residual stand and harvesting all but the sixteen largest trees when at least 5,000 harvestable board-feet per acre have accumulated. A “pretend” harvest at each cycle represents a different mutually exclusive perpetual management alternative, each with a different harvest age (similar to Example 2). The economically most-desirable harvest age is the one with highest SEV.

Simulation results (Table 4) show the existing stand target is met in 2044, when the stand is harvested and the future prescriptions are initiated. In 2045 the Event Monitor triggers re-initialization of the investment period and stand regeneration activities. The harvest volume target (5,000 board-feet per acre) is reached in 2094 and the “pretend” future prescriptions are simulated. SEV is maximized ($171, column 10) using a 79-year harvest cycle or rotation (column 2, Investment Period). Negative PNV and SEV for the 49 years between 2045 and 2084 result from regeneration costs for stand initiation, whereas the declining PNV and SEV from 2124 result from harvest volumes failing to keep pace with the time-value of money as specified by the four percent discount rate. Total volume is substantially greater than harvest volume (columns 5 and 6) because of the large reserve-tree volume. The results show that the 79-year harvest cycle is the most economically efficient prescription for perpetually maintaining at least 16 large trees per acre on this site. Procedures for initiating a future repeating management prescription based on some unknown, but computable target condition, would be similar to those used in this example.

|  |  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Investment  Period  (2) | Trees  /Acre  (3) | Basal  Area/  Acre  (4) | Total  Bd Ft  /Acre  (5) | Harvest  Bd Ft  /Acre  (6) | PNV  (7) | Internal  Rate of  Return  (8) | Realizable  Rate of  Return  (9) | SEV  (10) |
| 2004 | 10 | 400 | 127 | 19,00 | 0 | 0 |  |  |  |
| 2014 | 20 | 305 | 148 | 24,65 | 0 | 0 |  |  |  |
| 2024 | 30 | 241 | 166 | 29,36 | 0 | 0 |  |  |  |
| 2034 | 31 | 197 | 179 | 34,19 | 0 | 0 |  |  |  |
| 2044 | 41 | 163 | 188 | 39,049 | 27,693 | 1,288 | >50.0 | 9.1 |  |
| 2045 | 1 | 16 | 37 | 11,356 | 0 | -48 |  |  | -162 |
| 2054 | 19 | 1,24 | 43 | 13,622 | 0 | -48 |  |  | -92 |
| 2064 | 29 | 2,41 | 55 | 16,464 | 0 | -48 |  |  | -71 |
| 2074 | 39 | 1,85 | 87 | 19,299 | 0 | -48 |  |  | -61 |
| 2084 | 49 | 1,04 | 139 | 24,192 | 0 | -48 |  |  | -56 |
| 2094 | 59 | 1,14 | 198 | 31,867 | 7,64 | 61 | 5.7 | 4.7 | 67 |
| 2104 | 69 | 940 | 254 | 39,697 | 13,56 | 132 | 6.4 | 5.0 | 141 |
| 2114 | 79 | 788 | 296 | 47,282 | 20,28 | 163 | 6.3 | 5.1 | 171 |
| 2124 | 89 | 659 | 325 | 54,190 | 26,65 | 163 | 6.0 | 5.1 | 168 |
| 2134 | 99 | 553 | 344 | 60,027 | 32,16 | 148 | 5.7 | 5.0 | 151 |

##### Table 4. Example 4 results showing dynamic initiation of future perpetual management prescriptions.

#### Example 5 – what is the value of standing trees separate from the land itself?

Given an existing immature stand having a known bare land value (SEV), what is the value of the immature trees (often referred to as “reprod” value)? Stands that are stocked but have yet to attain merchantable size may have value beyond that of the bare land (SEV value) because they are closer to harvest age.

This example assumes a well-stocked pole-size stand that currently has little merchantable volume. The value of the parcel for timber production is represented by an SEV of $127. The objective is to manage the existing trees for economic value subject to reserving a residual stocking. “Pretend” harvests that reserve sixteen trees per acre across the diameter distribution are performed each cycle (Table 5). Differences between total and harvest board-feet (columns 5 and 6) reflect reserve-tree volume. Stand conditions and present values as of the end of the investment period (column 2) are shown in columns 3 through 7. “Value of trees” (columns 8) is the present value of the harvestable trees assuming they are to be harvested in the specified period. For example, if the planned harvest year was 2044 and the trees were destroyed today, then today’s “value of trees” is $312. Note, today’s “value of trees” depends on the expected or planned harvest date. “Value of trees” declines after 2044 because the future harvestable volume is insufficient to compensate for the delay in initiating the future management prescription represented by SEV.

The value of the immature stand is dependent on the stand’s planned harvest date and the delay in implementing the future management prescription, denoted by SEV. Hence, the user needs to know both the expected time when the current stand is to be harvested and the future management prescription that is to be pursued. The modeling procedure used here follows a “capitalized income value (value in use)” approach to appraisal (Davis and Johnson, 1987). This analysis values today’s existing trees when harvest is expected in the future assuming a given discount rate and a known SEV. The results can be used to estimate the market value of existing trees, separate from the land, when assessing land purchase or tree damage (e.g., by trespass, wind, or fire).

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Year  (1) | Investment  Period  (2) | Trees  /Acre  (3) | Basal  Area/  Acre  (4) | Total  Bd Ft  /Acre  (5) | Harvest  Bd Ft/  Acre  (6) | PNV  (7) | Value of  Trees  (8) |
| 2004 | 10 | 400 | 111 | 3,900 | 3,572 | 35 | -7 |
| 2014 | 20 | 378 | 188 | 7,276 | 6,887 | 118 | 49 |
| 2024 | 30 | 470 | 251 | 12,169 | 11,595 | 256 | 168 |
| 2034 | 40 | 381 | 296 | 16,386 | 15,537 | 384 | 284 |
| 2044 | 50 | 473 | 319 | 21,749 | 20,461 | 422 | 312 |
| 2054 | 60 | 355 | 335 | 25,989 | 24,220 | 384 | 269 |
| 2064 | 70 | 357 | 343 | 29,621 | 27,295 | 317 | 198 |
| 2074 | 80 | 279 | 344 | 33,540 | 30,518 | 272 | 150 |
| 2084 | 90 | 311 | 339 | 36,925 | 33,086 | 205 | 82 |
| 2094 | 100 | 241 | 332 | 39,796 | 35,063 | 150 | 25 |

##### Table 5. Example 5 results using “value of trees” to assess immature timber.

## III. OUTPUTS

At each FVS cycle ECON can produce two types of reports - summary measures and harvest volumes and gross values. The Economic Analysis Summary Report (Figure 4) presents costs and revenues accumulated over the investment period as of the end of each cycle. If a harvest occurs (“pretend” or actual) then a Harvest Volume and Gross Value Report (Figure 5) of harvested volumes and values can be generated for each cycle.

The number of years over which ECON accumulates costs and revenues is the investment period. Typically ECON is initiated at the beginning of an FVS simulation and the investment period is the number of elapsed years to the end of each cycle. However, ECON can be initiated at any time during an FVS simulation; including years within an FVS cycle. This allows growing a stand from an inventory date before initiating economic calculations, or delaying ECON start until after a harvest or other event. The investment period can also be re-started during a simulation, re-initiating the accumulation of costs and revenues and all other derived measures from a new time point (see Section II, Example 4 and Section IV, Specifying Multiple Investment Periods).

### SUMMARY MEASURES

Summary measures are computed from discounted costs and revenues and include present net value, internal rate of return, benefit cost ratio, realizable rate of return, soil expectation value, value of forest, value of trees, and valued harvested volumes (Figure 4). Costs and revenues are discounted to the beginning of the investment period from the end of the year in which they occur. Summary measures are computed as of the end of the investment period, typically the last year of a cycle. Because FVS conducts all harvest in the first year of the cycle, measures computed as of the end of a cycle may understate the economics of timber harvests, particularly for long cycle lengths. Users seeking measures for the year of harvest may need to alter standard cycle lengths for times when critical harvests occur. When the PRETEND keyword is active, harvest costs and revenues are not accumulated across cycles, but are reported only for the cycle in which the harvest occurs (see Section IV, Pretend Harvests). The summary measures, present net value, internal rate of return, benefit cost ratio, and realizable rate of return are computed for every cycle that ECON is active. Although these measures are always output they may not be appropriate. For example, internal rate of return may not be appropriate valuation measures when the simulation does not begin from an initial condition, but rather starts from an existing stand condition. Definition of economic measures and the algorithms for computing summary measures are described below.

#### Undiscounted Costs

Undiscounted costs are the accumulation of all costs (annual, special, pre-commercial thinning, harvest, and regeneration). If the investment period is re-initialized, cost accumulation is also re-initialized. Undiscounted costs include appreciation or depreciation (see Section IV, Value Rate Changes and Durations). Undiscounted costs provide information for evaluating actual cash-flows.

![](data:image/x-wmf;base64...)

#### Undiscounted Revenues

Undiscounted revenues are the accumulation of all revenues (annual, special, and harvest). If the investment period is re-initialized, revenue accumulation is also re-initialized. Undiscounted revenues include appreciation or depreciation (see Section IV, Value Rate Changes and Durations). Undiscounted revenues provide information for evaluating actual cash-flows.

![](data:image/x-wmf;base64...)

#### Present Value Costs

Present value costs are the undiscounted costs discounted to the beginning of the investment period from the end of the year in which they occur (discount period).

![](data:image/x-wmf;base64...)

#### Present Value Revenues

Present value revenues are the undiscounted revenues discounted to the beginning of the investment period from the end of the year in which they occur.

![](data:image/x-wmf;base64...)

#### Present Net Value (PNV)

Present net value (also referred to as present net worth, net present value, and net present worth) is the difference between accumulated present value revenues and present value costs as of the end of the investment period. If the investment period is re-initialized during a simulation, then PNV is similarly re-initialized.

![](data:image/x-wmf;base64...)

#### Internal Rate of Return

Internal rate of return (also known as rate of return, or return on investment) is the interest rate that is earned by invested funds, i.e., the average annual rate of return on an investment. In forestry, costs, including land cost, are the invested funds on which returns are earned. Internal rate of return is based on the expectation that an initial investment results in generation of future revenues. This condition may not be applicable to public lands or to existing stands where land or establishment costs are not considered (Bullard and Straka, 1998, p. 4.14).

Internal rate of return is the interest rate at which discounted costs equal discounted revenues (the interest rate at which present net value is zero). Internal rate of return can be calculated only when both costs and revenues exist. Its computation can be problematical if net revenue changes sign during the investment period, or if costs are insignificant, especially at the beginning of the investment period. Because ECON tracks costs and revenues annually, net revenue can often shift from positive to negative during a single cycle. Such conditions can result in more than one interest rate at which discounted costs and revenues are equal. ECON attempts to provide an appropriate internal rate of return, but users need to consider the possibility of multiple, but unreported, solutions. Clutter et al. (1983, pp 163-167) discuss problems in computing and interpreting internal rate of return. Internal rate of return is reported as of the end of the investment period. If the investment period is re-initialized during a simulation, then computation of internal rate of return is similarly re-initialized.

Internal rate of return is computed using a sequential search procedure. The input discount rate is the initial interest rate; if PNV is greater than zero, then the interest rate is increased until PNV approximates zero or the interest rate exceeds 50%. If PNV is less than zero, then the interest rate is decreased until PNV approximates zero or the interest rate is less than zero. The search algorithm may not determine the rate of return in some cases and is reported only if greater than zero and less than fifty percent.

#### Benefit-Cost Ratio (B/C)

The B/C ratio is the present value of revenues divided by the present value of costs, provided costs are greater than zero. B/C ratio is reported as of the end of the investment period. If the investment period is re-initialized during a simulation, then B/C ratio is similarly re-initialized.

![](data:image/x-wmf;base64...)

#### Realizable Rate of Return

Realizable rate of return (also known as modified internal rate of return, or composite rate or return) is the earning rate that equates the present value of all costs to the future value of all revenues at the end of the project life, assuming intermediate returns are reinvested (e.g., commercial thinning revenues). The discount rate is the assumed reinvestment rate for revenues and the discount rate for costs. It is the return on investment as of the end of the investment period. Realizable rate of return is only calculated when both costs and revenues exist. If the investment period is re-initialized during a simulation, then the realizable rate of return is similarly re-initialized. Realizable rate of return is not universally accepted as a decision criterion (Bullard and Straka, 1998, p. 4.16), but Davis and Johnson (1987, p. 287) support its use as the correct general criterion to characterize a project’s earning rate.

![](data:image/x-wmf;base64...)

Note: the above formula differs from some published algorithms (Davis and Johnson, 1986, p. 286), which use future revenue in the numerator; the factor (1.0\*discount\_rate/100.0) provides algebraic equivalence.

#### Soil Expectation Value (SEV)

Soil expectation value (also known as bare land value or land expectation value) reflects the ability of land to produce income from timber production. It is the present value of all cash flows assuming perpetually repeating management activities at a given discount rate. SEV is computed as of the end of the investment period. Value rate changes (see Section IV, Value Rate Changes and Durations) are applied based on perpetually repeating “like” investment periods. If the investment period is re-initialized during a simulation, then SEV is similarly re-initialized. If the discount rate is zero, SEV is undefined.

![](data:image/x-wmf;base64...)

#### Value of Forest

Value of forest is an “income capitalization” approach (Bullard and Straka, 1998) for estimating the value of existing timber and land. It is the present net value of cash flows from managing the existing stand plus the discounted SEV. Because a perpetual management prescription represented by SEV cannot be realized until the existing stand is harvested, SEV is discounted for this delay period. Value of forest is calculated as of the end of the investment period if a known SEV is input. If the investment period is re-initialized during a simulation, then the value of forest is similarly re-initialized.

![](data:image/x-wmf;base64...)

#### Value of Trees

Value of trees (“reprod” value) is an “income capitalization” approach for estimating the value of existing timber separate from the land at each simulation cycle (Davis and Johnson, 1987, pp. 434-435; Bullard and Straka, 1998, pp. 7.20-7.21). Typically this is the value of “immature” trees, but it also quantifies the “value at risk” of timber in older forest stands. Value of trees is the present net value of cash flows from managing the existing stand assuming replacement of the existing stand by a perpetually repeating management prescription represented by a known SEV. Value of trees may be of interest to managers considering land exchanges or for valuing damaged timber, such as by fire. It is calculated as of the end of the investment period if a known SEV is input. If the investment period is re-initialized during a simulation, then value of trees is similarly re-initialized.

ValueofTrees = ValueofForest − SEV

#### Harvest Volumes

Harvest volumes, both “pretend” and actual, are tabulated in the output reports, but only if the harvested volume was valued. That is, trees harvested using FVS thinning keywords are included in ECON outputs only if they have been specifically identified on HRVRVN keywords. Both cubic-foot and board-foot merchantable volumes valued by ECON are reported. Cubic-foot volume reflects total merchantable cubic volume for western variants and sawlog merchantable volume for eastern variants.

Figure 4 reproduces the Economic Analysis Summary Reports for Examples 2, 3, and 4. Not all measures are produced for every simulation; outputs are dependent on the submitted keywords. Results for a cycle are labeled with the beginning year of the cycle, e.g., the ten year cycle beginning in year 2004 and ending at the end of 2013 is labeled 2004 (exceptions occur when the STRTECON keyword re-initializes the investment period). “Value of forest” and “value of trees” were not calculated in the Summary Report for Example 2 because a known SEV was not input. In Example 3 a bare land value (known SEV) was input and “value of forest” and “value of trees” were calculated, but SEV was not. In Example 4 the ECON was dynamically re-initiated in 2045 resulting in re-initializing the investment period during the 2044 cycle. In the Summary Report for Example 4, the cycle between 2044 and 2054 is displayed with two records, one for the first year of the cycle, labeled 2044, and one representing the last nine years of the cycle, labeled 2045.

STAND ID: Example\_2 MANAGEMENT CODE: NONE - Calculate SEV for a perpetual management prescription.

ECONOMIC ANALYSIS SUMMARY REPORT

------------------------------------------------------------------------------------------------------------------------------------

INVEST PRETEND UNDISCNTED VALUE PRESENT VALUE VALUE VALUE MRCH MRCH

-MENT MODE IS ---------------- ---------------- B/C OF OF CU FT BD FT DISC KNOWN

YEAR PERIOD ACTIVE COST REVENUE COST REVENUE PNV IRR RATIO RRR SEV FORST TREES HARV HARV RATE SEV

------------------------------------------------------------------------------------------------------------------------------------

2004 10 NO 72 0 68 0 -68 0.0 -209 0 0 4.0

2014 20 NO 87 0 76 0 -76 0.0 -141 0 0 4.0

2024 30 NO 97 0 80 0 -80 0.0 -116 0 0 4.0

2034 40 NO 236 83 121 25 -96 <0.0 0.2 -0.1 -122 0 1640 4.0

2044 50 YES 656 1487 205 306 101 6.2 1.5 4.8 118 0 7230 4.0

2054 60 YES 856 2258 205 319 114 5.9 1.6 4.8 126 0 10609 4.0

2064 70 YES 1064 3276 197 316 119 5.6 1.6 4.7 127 0 14728 4.0

2074 80 YES 1295 4674 188 308 120 5.3 1.6 4.6 125 0 19905 4.0

2084 90 YES 1606 6511 180 293 112 5.1 1.6 4.6 116 0 26198 4.0

2094 100 YES 1961 8734 173 268 96 4.9 1.6 4.5 98 0 33059 4.0

STAND ID: Example\_3 MANAGEMENT CODE: NONE - Economically efficient time to implement future perpetual prescription

ECONOMIC ANALYSIS SUMMARY REPORT

------------------------------------------------------------------------------------------------------------------------------------

INVEST PRETEND UNDISCNTED VALUE PRESENT VALUE VALUE VALUE MRCH MRCH

-MENT MODE IS ---------------- ---------------- B/C OF OF CU FT BD FT DISC KNOWN

YEAR PERIOD ACTIVE COST REVENUE COST REVENUE PNV IRR RATIO RRR SEV FORST TREES HARV HARV RATE SEV

------------------------------------------------------------------------------------------------------------------------------------

2004 10 YES 1181 1407 1131 1352 221 >50.0 1.2 5.9 307 180 0 17006 4.0 127

2014 20 YES 1454 1828 946 1187 241 46.7 1.3 5.2 299 172 0 21678 4.0 127

2024 30 YES 1620 2328 723 1022 298 21.2 1.4 5.2 337 210 0 26248 4.0 127

2034 40 YES 1753 3082 543 914 370 14.8 1.7 5.4 397 270 0 30438 4.0 127

2044 50 YES 1802 3869 395 775 380 11.4 2.0 5.4 397 270 0 33937 4.0 127

2054 60 YES 1845 4853 293 657 363 9.5 2.2 5.4 375 248 0 36923 4.0 127

2064 70 YES 1907 5993 225 548 322 8.1 2.4 5.3 331 204 0 40237 4.0 127

2074 80 YES 1926 6876 176 425 249 7.0 2.4 5.2 254 127 0 42366 4.0 127

2084 90 YES 1841 7866 138 328 190 6.2 2.4 5.0 194 67 0 43360 4.0 127

2094 100 YES 1851 8950 117 252 135 5.6 2.2 4.8 138 11 0 44368 4.0 127

##### STAND ID: Example\_4 MANAGEMENT CODE: NONE - Dynamically initiate a future perpetual prescription.

##### ECONOMIC ANALYSIS SUMMARY REPORT

##### ------------------------------------------------------------------------------------------------------------------------------------

##### INVEST PRETEND UNDISCNTED VALUE PRESENT VALUE VALUE VALUE MRCH MRCH

##### -MENT MODE IS ---------------- ---------------- B/C OF OF CU FT BD FT DISC KNOWN

##### YEAR PERIOD ACTIVE COST REVENUE COST REVENUE PNV IRR RATIO RRR SEV FORST TREES HARV HARV RATE SEV

##### ------------------------------------------------------------------------------------------------------------------------------------

##### 2004 10 NO 0 0 0 0 0 0 0 4.0

##### 2014 20 NO 0 0 0 0 0 0 0 4.0

##### 2024 30 NO 0 0 0 0 0 0 0 4.0

##### 2034 40 NO 0 0 0 0 0 0 0 4.0

##### 2044 41 NO 1073 7502 215 1502 1288 >50.0 7.0 9.1 4954 27693 4.0

##### 2045 9 NO 50 0 48 0 -48 0.0 -162 0 0 4.0

##### 2054 19 YES 50 0 48 0 -48 0.0 -92 0 0 4.0

##### 2064 29 YES 50 0 48 0 -48 0.0 -71 0 0 4.0

##### 2074 39 YES 50 0 48 0 -48 0.0 -61 0 0 4.0

##### 2084 49 YES 50 0 48 0 -48 0.0 -56 0 0 4.0

##### 2094 59 YES 656 1379 133 194 61 5.7 1.5 4.7 67 1574 7464 4.0

##### 2104 69 YES 947 2787 133 265 132 6.4 2.0 5.0 141 2933 13756 4.0

##### 2114 79 YES 1228 4466 124 287 163 6.3 2.3 5.1 171 4165 20228 4.0

##### 2124 89 YES 1382 6192 106 269 163 6.0 2.5 5.1 168 5278 26365 4.0

##### 2134 99 YES 1416 8056 88 236 148 5.7 2.7 5.0 151 6268 32116 4.0

##### 2144 109 YES 1497 9786 77 194 117 5.3 2.5 4.9 119 7066 37446 4.0

##### Figure 4. ECON Summary Reports for Examples 2, 3, and 4.

### HARVEST VOLUMES AND GROSS VALUES

The Harvest Volume and Gross Value Report (Figure 5) summarizes harvested volume and revenue for a cycle by species and by tree DBH and/or log small-end diameter inside-bark (DIB) classes. Unlike the Summary Report (Figure 4) outputs are not cumulative across cycles. Values are grouped according to the species, size-classes, and unit-of-measures defined on HRVRVN keywords (Section V). Harvested tons per acre are converted from harvested cubic volume according to rates specified on the LBSCFV keyword. Gross values (dollars) for each volume characteristic (except tons per acre) are based on prices submitted on the HRVRVN keywords including value rate changes; values reflect only harvest revenues and do not include other costs or revenues.

Figure 5 shows two cycles from the Harvest Volume and Gross Value Report for Example 4. A price of zero was specified on the HRVRVN keyword for trees per acre and cubic-foot volume. This produced output for harvested trees per acre and cubic-foot log volumes without affecting revenue values. Note that harvested trees per acre are tabulated by tree DBH size whereas cubic-foot volumes are by log DIB; these tabulations are controlled by the unit-of-measure field on the HRVRVN keyword. No tons per acre values are listed because a LBSCFV keyword was not submitted. Volumes and gross values are produced for both actual and “pretend” harvests.

HARVEST VOLUME AND GROSS VALUE REPORT

YEAR = 2044 - PRETEND HARVEST: NO

SMALL-END DIB TREE DBH TPA TPA TONS/ CU FT CU FT BD FT BD FT TOTAL

SPECIES MIN MAX MIN MAX REMOVED VALUE $ ACRE REMOVED VALUE $ REMOVED VALUE $ VALUE $

------- ------------- ------------- ------- -------- ------- ------- -------- ------- -------- --------

DF 0.0 999.9 146 0 0

DF 4.0 10.0 6085 1065 1065

DF 10.0 16.0 17211 5163 5163

DF 16.0 20.0 3219 1127 1127

DF 0.0 999.9 4765 0 0

WH 0.0 999.9 1 0 0

WH 6.0 10.0 46 2 2

WH 10.0 20.0 923 92 92

WH 20.0 999.9 209 52 52

WH 0.0 999.9 189 0 0

------- -------- ------- ------- -------- ------- -------- --------

Totals 147 0 4954 0 27693 7502 7502

#####

##### YEAR = 2094 - PRETEND HARVEST: YES

##### SMALL-END DIB TREE DBH TPA TPA TONS/ CU FT CU FT BD FT BD FT TOTAL

##### SPECIES MIN MAX MIN MAX REMOVED VALUE $ ACRE REMOVED VALUE $ REMOVED VALUE $ VALUE $

##### ------- ------------- ------------- ------- -------- ------- ------- -------- ------- -------- --------

##### WP 0.0 999.9 71 0 0

##### WP 4.0 10.0 975 117 117

##### WP 0.0 999.9 201 0 0

##### WL 0.0 999.9 4 0 0

##### DF 0.0 999.9 199 0 0

##### DF 4.0 10.0 4697 822 822

##### DF 10.0 16.0 1329 399 399

##### DF 0.0 999.9 1250 0 0

##### GF 0.0 999.9 237 0 0

##### WH 0.0 999.9 81 0 0

##### WH 6.0 10.0 208 10 10

##### WH 0.0 999.9 73 0 0

##### RC 0.0 999.9 488 0 0

##### LP 0.0 999.9 6 0 0

##### LP 4.0 10.0 196 24 24

##### LP 0.0 999.9 36 0 0

##### ES 0.0 999.9 9 0 0

##### AF 0.0 999.9 3 0 0

##### AF 4.0 10.0 59 7 7

##### AF 0.0 999.9 14 0 0

##### ------- -------- ------- ------- -------- ------- -------- --------

##### Totals 1098 0 1574 0 7464 1379 1379

##### Figure 5. Harvest Volume and Gross Value Report for two cycles from Example 4. Note “pretend” harvest status indicator.

## IV. PROGRAM FEATURES

Keywords that control ECON behavior are detailed in Section V. This section provides additional discussion for some features.

### PRETEND HARVESTS

Central to ECON design is that only harvested timber is valued, i.e., standing inventory is not valued. Harvest costs and revenues are applied only to harvests resulting from execution of FVS thinning keywords. This constraint could have limited ECON utility to valuing only a single final harvest during a simulation, but a method was devised to allow hypothetical harvests during a cycle. That is, FVS thinning keywords can be used to schedule a hypothetical harvest identifying the trees to be harvested, but without their removal from the inventory. Multiple hypothetical harvests can be analyzed in a single simulation without changing the normal (un-harvested) stand development. The PRETEND keyword provides this functionality.

The PRETEND keyword performs two functions when active. First, it allows FVS thinning keywords to simulate thinning without altering the FVS tree list. Second it allows valuing the hypothetical harvest without adding the costs or revenues into future cycles; harvest costs and revenues are reported only in the cycle in which they occur. This functionality allows mutually exclusive harvest prescriptions to be analyzed in a single simulation. Each “pretend” cycle operates on the FVS inventory free of any previous “pretend” cycle harvests and valuations; “pretend” harvest effects are local to their cycle.

The PRETEND keyword only affects FVS harvest keywords and harvest valuation. Other FVS actions and ECON valuations (annual, regeneration, etc.) are not affected.

### COMMERCIAL VERSUS PRE-COMMERCIAL HARVEST

Commercial harvest is distinguished from pre-commercial thinning based on the criteria on the PCTSPEC keyword. Although FVS allows multiple thinning keywords to specify timber removals, ECON uses the totality of removed timber in a cycle to assess harvest status. Pre-commercial harvests incur costs as specified on PCTFXCST and PCTVRCST keywords. Commercial harvests incur costs as specified on HRVFXCST and HRVVRCST keywords and accrue revenue as specified on the HRVRVN keyword.

### DISCOUNT RATE

The discount rate is the interest rate used in all present value calculations. The discount rate may be expressed in “real” or “nominal” terms. A nominal rate includes inflation as a component. In a real discount rate, the inflationary component has been “removed”. ECON makes no distinction between real or nominal rates in its calculation procedures. The user is responsible for ensuring consistency between discount rate and value rate changes. The discount rate can be changed whenever ECON is re-initialized (see “Specifying Multiple Investment Periods” in this section below)

### VALUE RATE CHANGES AND DURATIONS

Costs and prices often change over time in response to economic conditions. These changes are referred to as “value rate changes.” Value rate changes appreciate or depreciate costs or revenues over time. They may be expressed in either “real” or “nominal” terms. Value rate changes that do not include inflation are defined as “real” rate changes, value rate changes that include inflation are said to be “nominal” rates. ECON does not distinguish between real or nominal value rate changes or discount rates; it is the user’s responsibility to provide consistency between value rate changes and discount rates (see Bullard and Straka, 1998, pp. 6.1-6.9).

Value rate changes can be entered on all cost and revenue keywords (except SPECCST and SPECRVN) as supplemental records. Value rate changes are specified using paired fields, the first field states the rate of change in percent and the second gives the time (duration) over which the stated change will be applicable. For example, if a harvest cost has a one-percent rate change and thirty-year duration, then the harvest cost will be increased one-percent each year of the thirty year duration period. Multiple value rate changes may be entered and are sequentially applied during a simulation. A positive rate change appreciates a cost or revenue (price) and a negative value depreciates a cost or revenue. Value rate durations must be greater than zero and are specified as a number of years (not a calendar year or cycle). Value rate changes must be entered in the order they are to be applied without missing or blank fields. Value rate changes accrue from the time that ECON is first started. If ECON is re-initiated, i.e., the investment period is restarted; value rate changes still accrue from the ECON start year, not from the start of the re-initiated investment period.

Value rate changes can also be used to depreciate a cost or price to zero, thus terminating a periodic series of costs or revenues. A rate change of -100% will depreciate a cost or price to zero. For example, if the annual cost of a twenty year monitoring program is entered using an ANNUCST keyword, with value rate changes of 0% for twenty years followed by -100% rate for any number of years, then this cost would accrue annually for twenty years but would become zero after that time. Once a cost or price is depreciated to zero it cannot be changed, it remains zero until the end of the simulation, or until ECON is re-initialized.

### VOLUME CALCULATION AND VALUATION

ECON evaluates only harvested volume as specified via FVS thinning keywords; losses to harvest as specified on the FVS keyword YARDLOSS are not included. Further, harvested volume is valued by ECON only when specifically identified on HRVRCST, HRVFXCST, PCTVRCST, PCTFXCST, or HRVRVN keywords. These keywords permit specifying fixed harvest costs and harvest costs and revenues (prices) by diameter and by unit-of-measure (e.g., cubic or board feet). The harvest volume evaluated by ECON is a subset of the removals simulated by FVS. For example, if the minimum diameter defined on HRVVRCST keywords is eight inches DBH but FVS thinning keywords specify that six inch and larger trees will be cut, then trees between six and eight inches will not be reflected in ECON harvest costs. Similarly only harvested trees that meet criteria specified on HRVRVN keywords will be included in revenue calculations. Cost and revenue keywords are independent; hence it is possible to incur costs for trees that do not produce revenue and vice versa.

The manner of specifying diameter ranges for allotting costs and revenues differ for harvest costs (HRVRCST and PCTVRCST keywords) versus harvest revenues (HRVRVN keyword). The cost keywords specify both minimum and maximum diameters on each keyword, similar to FVS thinning keywords. The HRVRVN keyword permits entering only the minimum log or tree diameter to which the revenue value is to be applied. Specifying minimum diameters on a succession of HRVRVN keywords defines diameter classes. For example, if the minimum diameter on one keyword is eight inches and the minimum on another is ten inches, then the first keyword applies to diameters greater than or equal to eight inches but less than ten inches, while the second keyword applies to diameters ten inches and larger. This entry style reduces the likelihood that revenues will be double-counted. Costs on the other hand are additive, e.g., hauling costs are in addition to felling and other harvest costs; further, hauling costs may be the same for all log sizes, but felling costs may differ by tree size.

Valuing harvest revenues requires careful specification because FVS can compute volume for the whole tree or by individual logs, depending on the variant, species, and submitted keywords. Volume calculations are controlled by the FVS keyword BFVOLUME and VOLUME, and are independent of any ECON keywords. For a species, volumes are computed either for whole tree or individual logs, not both. Further, FVS can compute volumes differently for board-feet and cubic-feet, i.e., board-foot volume may be computed by individual log while cubic-foot volume may be computed for the whole tree. To provide independence between ECON revenue and FVS volume computations, a user may submit HRVRVN keywords for both individual log and whole tree volumes. Submitting HRVRVN keywords for both board-foot individual logs and board-foot whole tree units of measure produces revenue values regardless of the FVS volume calculation method. Because FVS computes volume only for logs or trees, revenues will not be double-counted.

ECON computes revenue for all units of measure submitted on the HRVRVN keywords whenever volumes in those units are harvested. This can be problematical but also allows flexibility. If HRVRVN keywords are submitted for board-foot and cubic-foot volumes, revenues are computed for both volume types. This could result in double valuing volume. Alternatively, if a user wanted to value chip-and-saw logs where 10% of the cubic volume is chipped and 90% is sawn, then HRVRVN keywords could be submitted to reflect 10% of the price based on cubic-volume and 90% based on board-foot volume.

The revenue and harvest volume associated with each HRVRVN keyword is displayed by cycle for each harvest (actual or “pretend”) in the Harvest Volume and Gross Value Report (Section III). By specifying a zero price on a HRVRVN keyword for some unit-of-measure, harvested volume will be displayed without contributing to revenue and thus economic measures. By skillful use of HRVRVN keywords, output by species and tree DBH or log DIB can be displayed for harvested tree numbers, cubic-foot volumes and board-foot volumes (Section III, Figure 5). Note, harvested tree that incur costs (e.g., are specified via HRVVRCST or PCTVRCST keywords) but are not identified on HRVRVN keywords will not be included in the Harvest Volume and Gross Value Report.

To summarize, valuing harvests can be complex. Harvested volumes are included in ECON analyses only when harvested trees are specifically identified on cost and revenue keywords. In general, users should provide prices only by board-foot or cubic-foot unit-of-measure for an individual species and size class to avoid mistaken double-counting. However, prices can be entered for both whole tree and individual log unit-of-measures without double counting because FVS computes volume for a species only by whole tree or by log, not both. Finally, HRVRVN keywords with a zero price can be entered without affecting economic values, while providing additional output of harvested tree characteristics.

### UNITS OF MEASURE

Units of measure for costs, revenues and pre-commercial thinning specifications are independent. Units of measure need not be consistent between different keywords or the same keyword, e.g., a harvest price (HRVRVN keyword) may be specified based on cubic-feet for one species and board-feet for another species or a price may be specified for the same species in board-feet for one diameter-class and cubic-feet for another diameter-class. It is up to the user to ensure that the submitted keywords are consistent with intentions.

### SPECIFYING MULTIPLE INVESTMENT PERIODS

The STRTECON keyword is used to re-initialize the investment period. The start time can vary depending on the analysis problem. For bare land (or an equivalent beginning residual stand condition), the start time would be the beginning of the FVS simulation. Sometimes, however, the desired start time is after the current stand is harvested. For example if the stand is to be harvested in the first cycle then the ECON start year would be set to year two, because all harvests in FVS are done in the first year of the cycle. In another situation, starting ECON calculations may depend on the current stand attaining some future condition (Section II, Example 4). In this situation the Event Monitor could be used to conditionally schedule the STRTECON keyword. In using the Event Monitor, a “wait time” may need to be set to ensure that economic measures are calculated after the condition has been satisfied. For example, a one-year wait time would be specified on the STRTECON keyword to begin SEV calculation immediately following a harvest, i.e., after the first year of the cycle. This technique allows evaluating the financial aspects of the current stand separate from a future stand. Multiple STRTECON keywords may be submitted; each submittal will result in re-initializing the investment period and initiate new calculation of economic measures.

## V. KEYWORDS AND CONTROL VARIABLES

Program control of ECON is consistent with other FVS components, i.e., users specify ECON parameters with keywords. Additionally, ECON defines variables that can be used in Event Monitor expressions or conditional activity scheduling.

### KEYWORDS

Keywords provide information on costs and revenues, pre-commercial thinning criteria, and calculation processing. Sequences of ECON keywords begin with the ECON keyword and are terminated with the END keyword. Multiple sequences of ECON keywords can be submitted. The format for ECON keywords is the same as other FVS keywords. Some keywords can be dynamically invoked and modified using Event Monitor features. Additional information on keyword format can be found in the Keyword Reference Guide for the Forest Vegetation Simulator (Van Dyck, 2005).

#### ANNUCST (Annual Cost)

ANNUCST specifies per acre annually occurring cost. Examples of annual costs are administrative costs and equal annual equivalent or land rent. A maximum of eight keywords may be specified; additional keywords are ignored. Each cost is additive with previously submitted costs.

Field 1: Current (today’s) cost per acre.

Field 2: Label describing annual cost (e.g., taxes). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate as percent change is entered in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%, and duration must be greater than zero. Up to eight rate/duration pairs can be entered on the supplemental record.

#### ANNURVN (Annual Revenue)

ANNURVN specifies per acre annually occurring revenue. Examples of annual revenues are grazing leases and recreational rents. A maximum of eight keywords may be specified; additional keywords are ignored. Each revenue is additive with previously submitted revenues.

Field 1: Current (today’s) revenue per acre.

Field 2: Label describing annual revenue (e.g., grazing,). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### BURNCST (Burn Site Prep Cost)

BURNCST specifies per acre burning site prep cost. Burning site prep cost is registered with ECON whenever burning site prep has been completed in FVS (specified by the Regeneration Establishment Extension BURNPREP keyword). If more than one keyword is submitted only the last is used.

Field 1: Current (today’s) cost per acre.

Field 2: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### ECON (Economic Extension Model Initialization)

ECON signifies the beginning of ECON extension keywords. This keyword must be the first record in each set of ECON extension keywords and the keyword sequence must be terminated with an END keyword. No parameter fields are associated with this keyword.

#### END (End of ECON Keywords)

END signifies the end of ECON extension keywords. No parameter fields are associated with this keyword. This keyword must be the last record in each set of ECON extension keywords.

#### HRVFXCST (Harvest Fixed Cost)

HRVFXCST specifies per acre commercial thinning or harvest cost. Values from this keyword are applied to harvests only when the PCTSPEC specifications are met or exceeded. Costs incurred in a cycle when the PRETEND keyword is active are reported only for that cycle, i.e., costs are not carried forward to later cycles. A maximum of eight keywords may be specified; additional keywords are ignored. Each cost is additive with previously submitted costs.

Field 1: Current (today’s) per acre harvest cost.

Field 2: Label describing harvest cost (e.g., equipment move-in or sale appraisal costs). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### HRVVRCST (Harvest Variable Cost)

HRVVRCST specifies commercial thinning or harvest cost by unit-of-measure and tree DBH. Values from this keyword are applied to harvests only when the PCTSPEC specifications are met or exceeded. Costs incurred during a cycle when the PRETEND keyword is active are reported only for that cycle, i.e., costs are not carried forward to later cycles. A maximum of eight keywords may be specified; additional keywords are ignored.

Field 1: Current (today’s) cost per unit-of-measure and tree DBH. A zero cost is permitted.

Field 2: Unit-of-measure for which cost is specified. This field is required or the keyword is ignored.

1 = tree/acre harvested

2 = 1000 board-feet/acre

3 = 100 cubic-feet/acre

Field 3: Smallest tree DBH in inches to which cost applies (greater than or equal). Default=0.0

Field 4: Largest tree DBH in inches to which cost applies (less than). Default = 999.0

Field 5: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### HRVRVN (Harvest Revenue)

HRVRVN specifies commercial thinning or harvest price by unit-of-measure by diameter-class by species. Values from this keyword are applied to harvests only when the PCTSPEC specifications are met or exceeded. Revenues accrued during a cycle when the PRETEND keyword is active are reported only for that cycle, i.e., revenues are not carried forward to later cycles. The unit-of-measure field controls the application of revenues and interpretation of diameters. If unit-of-measure is tree/acre harvested, 1000 board-feet/acre for harvested trees, or 100 cubic-feet/acre for harvested trees, then diameter is tree DBH. If unit-of-measure is 1000 board-feet/acre for harvested logs or 100 cubic-feet/acre for harvested logs, then diameter is log small-end inside-bark DIB. Revenue is computed only for species explicitly specified unless a default species (0 or ALL) is entered. Keywords of the same unit-of-measure and species form a “set” that defines diameter classes for revenue valuation. A maximum of eight keywords may be specified for each combination of unit-of-measure and species or species-group, thus permitting up to eight diameter classes to be specified; duplicate or additional keywords are ignored.

Field 1: Current (today’s) price per unit-of-measure, diameter, and species. A zero price is permitted; this allows multiple units of measures to be output in the Harvest Volume and Gross Value Report without double-counting revenues. A zero price can also be used to avoid financially valuing trees that are cut but not removed, e.g., large logs left on site.

Field 2: Unit-of-measure for the specified price. This field is required or the keyword is ignored.

1 = tree/acre harvested

2 = 1000 board-feet/acre for harvested trees

3 = 100 cubic-feet/acre for harvested trees

4 = 1000 board-feet/acre for harvested logs

5 = 100 cubic-feet/acre for harvested logs

Field 3: Smallest tree DBH or log DIB to which cost applies. Previous or successive keywords setting a larger “smallest” diameter define the upper diameter limit for this keyword set. Default = 0.0

Field 4: Species for the specified price. Enter FVS species numeric or character code, or species group name. If field is zero or blank the price entered in field 1 applies to all species not otherwise specified. Default = 0

Field 5: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

Note: If a default species or ALL species is entered, it will not alter prices entered for a specified species or species group. If duplicate keywords are entered for a specific species (or species group), unit-of-measure, and tree/log diameter, then the last keyword entered will be used.

#### LBSCFV (Pounds per Harvested Cubic-Foot Volume)

LBSCFV specifies value for converting one harvested cubic-foot of volume to pounds. This keyword does not affect calculations; it simply adds weight for harvested volume to the Harvest Volume and Gross Value Report. Only species explicitly specified will have conversion values, unless a default species is entered. If a default species (0 or ALL) is entered, it does not overwrite entered species or species groups. A maximum of one keyword entry per species is allowed; if more than one keyword is entered for a species, only the last keyword is used.

Field 1: Value for converting one harvested cubic-foot of volume to pounds.

Field 2: Species for which the conversion factor applies. Enter FVS species numeric or character code, or species group name. If field is zero or blank the conversion value applies to all species not specifically identified. Default = 0

#### MECHCST (Mechanical Site Prep Cost)

MECHCST specifies per acre mechanical site prep cost. Mechanical site prep cost is registered with ECON whenever mechanical site prep has been completed in FVS (specified by the Regeneration Establishment Extension MECHPREP keyword). If more than one keyword is submitted, only the last is used.

Field 1: Current (today’s) cost per acre.

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Up to eight rate/duration pairs can be entered on the supplemental record.

#### NOTABLE (Suppress ECON Table Output)

NOTABLE specifies suppression of ECON output reports.

Field 1: Suppress output of reports, default=0, no reports are suppressed.

1 = suppress all ECON output reports

2 = suppress Harvest Volume and Gross Value Report

#### PCTFXCST (Pre-Commercial Thinning Fixed Cost)

PCTFXCST specifies per acre pre-commercial thinning cost. Values from this keyword are applied to harvests only when the PCTSPEC specifications are not met. Costs incurred during a cycle when the PRETEND keyword is active are reported only for that cycle, i.e., costs are not carried forward to later cycles. A maximum of eight keywords may be specified; additional keywords are ignored. Each cost is additive with previously submitted costs.

Field 1: Current (today’s) cost per acre.

Field 2: Label describing pre-commercial cost (e.g., sale preparation). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### PCTSPEC (Pre-Commercial Thinning Specification)

PCTSPEC specifies quadratic mean diameter (QMD) in inches and total per-ace harvested volume to differentiate pre-commercial thinning from commercial thinning or harvest. Pre-commercial thinning always incurs costs while commercial thinning or harvest may accrue costs and revenues. If the average QMD from all harvested trees is greater than or equal to the specified QMD and the total harvested volume per acre is greater than or equal to the specified volume, the entry is considered a commercial harvest, otherwise the harvest is assumed a pre-commercial thinning. If this keyword is not used, all harvests are assumed commercial. If more than one keyword is entered, only the last is used.

Field 1: Minimum QMD in inches of all harvested trees to be considered a commercial harvest. Default = 0.0

Field 2: Unit-of-measure for minimum volume. This field is required or the keyword is ignored.

2 = board-feet/acre

3 = cubic-feet/acre

Field 3: Minimum volume per acre to be considered a commercial harvest. Default = 0.0

#### PCTVRCST (Pre-Commercial Thinning Variable Cost)

PCTVRCST specifies pre-commercial thinning cost by unit-of-measure and tree DBH. Values from this keyword are applied to harvests only when the PCTSPEC specifications are not met. Costs incurred during a cycle when the PRETEND keyword is active are reported only for that cycle, i.e., costs are not carried forward to later cycles. A maximum of eight keywords may be specified; additional keywords are ignored.

Field 1: Current (today’s) cost per unit-of-measure and tree DBH.

Field 2: Unit-of-measure for which cost is specified. This field is required or record is skipped.

1 = tree/acre removed

2 = 1000 board-feet/acre

3 = 100 cubic-feet/acre

Field 3: Smallest tree DBH in inches to which cost applies (greater than or equal). Default=0.0

Field 4: Largest tree DBH in inches to which cost applies (less than). Default = 999.0

Field 5: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### PLANTCST (Planting Cost)

PLANTCST specifies planting cost. Planting cost is registered with ECON whenever planting has been accomplished in FVS (specified by the FVS PLANT keyword). A maximum of two keywords may be specified, one for each unit-of-measure. If more than one keyword is submitted with the same unit-of-measure only the first keyword is recognized. If keywords are submitted for both per acre and per 1000 trees units, the two costs will be additive. Costs per 1000 trees planted are accumulated for each FVS PLANT keyword executed, but costs per acre are only charged for each year that planting occurs, regardless of the number of FVS PLANT keywords submitted.

Field 1: Current (today’s) cost per unit-of-measure.

Field 2: Unit-of-measure for which cost is specified. This field is required or record will be skipped.

6 = per acre

7 = 1000 planted trees/acre

Field 3: Enter an “&” (without quotes) if a supplemental record follows the keyword.

Supplemental Record:

Value rate changes are specified on the supplemental record and are entered as a rate and duration pair. The rate is entered as a percent change in the first five-character field and the duration in years is entered in the next five-character field. Rate must be greater than or equal to -100%. Up to eight rate/duration pairs can be entered on the supplemental record.

#### PRETEND (Pretend to Simulate a Harvest)

PRETEND requests that economic benefits and costs be calculated for a hypothetical (i.e., “pretend”) harvest. When PRETEND is active, harvest costs and revenues are computed, but removals are not made from FVS tree records. When active, harvest costs and revenues are reported in the cycle in which they occur but are not accumulated across cycles. The PRETEND keyword is effective only when active in the beginning year of a cycle in which a harvest is simulated, because FVS conducts all harvests in the first year of a cycle. Only harvest costs and revenues are affected by this keyword. PRETEND activation can be turned on and off during the simulation by setting different activation times and durations. If multiple PRETEND keywords are entered for the same cycle they are acted upon in ascending sequence, but the keyword specified last determines the time when PRETEND activation ends.

Field 1: Year or cycle activating “pretend” mode.

Field 2: Duration, in years (not cycles) that “pretend” mode is active. To suspend “pretend” mode in a period, enter duration of zero. Default = 999.

Note: PRETEND can be started conditionally using the Event Monitor; if the keyword is embedded in an IF-THEN-ENDIF sequence, then field 1 is interpreted as years from the time the condition is true until PRETEND becomes active, or in other words, a lag time (e.g. a 5 in field 1 means wait 5 years after condition is true to initiate PRETEND). The PARMS feature may be used to set the duration period; the word PARMS must begin between columns 21 through 30.

Note: The PRETEND keyword acts in addition to the FVS MINHARV keyword; if MINHARV is specified, harvest must meet MINHARV conditions in order to be simulated in a "pretend" fashion.

#### SPECCST (Special Cost)

SPECCST specifies a once per cycle cost. Examples are periodic stand exam costs, or a one-time fire suppression cost. In variants that do not include the “full establishment” regeneration model, this keyword can be used to specify site preparation costs. Any number of special cost keywords can be entered; costs are additive within and across cycles.

Field 1: Year or cycle in which the special cost is to occur. If zero is entered the cost will be incurred at the end of the first year of every cycle in which ECON is active.

Field 2: Label describing special cost (e.g., pruning,). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Dollar value of special cost

Note: SPECCST can be specified conditionally using the Event Monitor; if the keyword is embedded in an IF-THEN-ENDIF sequence, then field 1 is interpreted as years from the time the condition is true until the special cost occurs, or in other words, a lag time (e.g. a 5 in field 1 means wait 5 years after condition is true to incur the cost). The PARMS feature may be used to set the cost; the word PARMS must begin between columns 31 through 40.

#### SPECRVN (Special Revenue)

SPECRVN specifies a once per cycle revenue. Examples are periodic mushroom harvests or a one-time bough sale. Any number of special revenue keywords can be entered; revenues are additive within and across cycles.

Field 1: Year or cycle in which the special revenue is to occur. If zero is entered the cost will be incurred at the end of the first year of every cycle in which ECON is active.

Field 2: Label describing special revenue (e.g., boughs). This value is for documentation only; it is not used after the keyword is submitted.

Field 3: Dollar value of special revenue

Note: SPECRVN can be specified conditionally using the Event Monitor; if the keyword is embedded in an IF-THEN-ENDIF sequence, then field 1 is interpreted as years from the time the condition is true until the special revenue accrues, or in other words, a lag time (e.g. a 5 in field 1 means wait 5 years after condition is true to accrue incur the revenue. The PARMS feature may be used to set the revenue; the word PARMS must begin between columns 31 through 40.

#### STRTECON (ECON Start or Re-initialization Year)

STRTECON specifies the beginning time for starting economic calculations or reinitializing the ECON investment period during a simulation. The STRTECON year may be an intermediate year within a FVS cycle. This keyword also sets the startup parameters for discount rate, known soil expectation value (SEV), and SEV computation. Multiple keywords can be submitted, each initiating a new investment period, new discount rate and new SEV parameters. If more than one STRTECON keywords is submitted for a single cycle, the investment period and start parameters will be re-initialized to the last keyword record submitted for that cycle.

Field 1: Year or cycle when economic calculations start. If the ECON start-year occurs after the first year of a cycle then harvests in that cycle will not be included in ECON calculations, because FVS performs harvests in the first year of each cycle. Default = cycle 1.

Field 2: Percentage discount rate, greater than or equal to zero (e.g., 5.25). Default = 0.

Field 3: Per acre dollar value of the known SEV; must be greater than zero. Specifying a known SEV results in the calculation “value of forest” (land plus standing harvestable timber) and “value of trees” (harvestable timber separate from land). If a value is entered in this field then SEV will not be calculated, regardless of the value in Field 4, default = 0.

Field 4: Compute the SEV for each cycle; turns the computation of SEV on and off. This field only has affect if field 3 is blank or zero and the discount rate is greater than zero; SEV is undefined for a zero discount rate.

0 = do not compute SEV, default.

1 = do compute SEV

Note: STRTECON can be conditionally specified using the Event Monitor. If the keyword is embedded in an IF-THEN-ENDIF sequence, then field 1 is interpreted as years from the time the condition is true until economic calculation starts or the investment period is reinitialized, or in other words, a lag time (e.g. a 5 in field 1 means wait 5 years after condition is true to start or reinitialize economic calculations).

Note: Extremely large discount rates may result in numerical overflow in some calculations.

### EVENT MONITOR VARIABLES

ECON defines variables for use in Event Monitor expressions. Because ECON calculations are made near the end of the FVS cycle, variables are only defined after the first cycle, and represent values as of the end of each cycle. Therefore, ECON variables can be used to affect actions only in following cycles. The following Event Monitor variables are defined (ECON summary measures names are shown in parenthesis when available). The ECON summary measures realizable rate of return and benefit cost ratio are not output, as they are readily computed from other variables.

DISCCOST – accumulated discounted costs plus any “pretend” harvest costs in the current cycle (present value costs).

DISCRATE – the discount rate as specified on the STRTECON keyword, always defined.

DISCREVN – accumulated discounted revenues plus any “pretend” harvest revenues in the current cycle (present value revenues).

FORSTVAL – present net value of cash flows from harvested timber plus land value, including any “pretend” harvest cash flows in the current cycle (“value of forest”).

HARVCOST – total of harvest costs from commercial harvests during a cycle, including any “pretend” harvest cost in the current cycle; defined if harvests were simulated.

HARVREVN – total of all revenue from commercial harvests during a cycle, including any “pretend” harvest revenue in the current cycle; defined if harvests were simulated.

IRR – internal rate of return in percent including any “pretend” harvest cash flows in the current cycle (internal rate of return).

PCTCOST – total of all harvest costs from pre-commercial harvests during a cycle; defined if pre-commercial harvests were simulated.

PNV – accumulated present net value period including “pretend” harvest cash flows in the current cycle (present net value).

RPRODVAL – present net value of cash flows from harvestable timber separate from land, including any “pretend” harvest cash flows in the current cycle (“value of trees”).

SEV – accumulated soil expectation value including “pretend” harvest cash flows in the current cycle (soil expectation value).

UNDISCST – accumulated undiscounted costs plus any “pretend” harvest costs in the current cycle (undiscounted costs).

UNDISRVN – accumulated undiscounted revenues plus any “pretend” harvest revenues in the current cycle (undiscounted revenue).

## VI. EXAMPLE KEYWORD FILES

This section lists the keyword files used to create the examples presented in Section II. The listings can be “cut and pasted” to create a keyword file for use in FVS.

### Example 1A keywords – timber management objective

StdIdent

Example\_1A\_TbrMgmt - Economically efficient time to harvest an existing stand.

Screen

InvYear 2004

StdInfo 530 0 0 30

Design 1 999 1 0 1

NumCycle 10

\*Turn off any ingrowth and natural regeneration

Estab

NoAuTaly

NoInGrow

End

ThinDBH 0 7. 999. 0.0 All 16. 0.0

\*Begin ECON Extension keywords

Econ

STRTECON 1 4 0 1

\*Make all harvest "pretend" harvests

PRETEND 1

ANNUCST 3 Mgmt Cost

HRVVRCST 90 2 6.0 12.0

HRVVRCST 70 2 12.0 16.0

HRVVRCST 50 2 16.0 22.0

HRVVRCST 30 2 22.0 999.0

HRVRVN 90 4 10.0 DF

HRVRVN 80 4 4.0 DF

HRVRVN 140 4 16.0 DF

HRVRVN 250 4 18.0 DF

HRVRVN 300 4 20.0 DF

HRVRVN 400 4 22.0 DF

HRVRVN 500 4 24.0 DF

HRVRVN 50 4 6.0 WH

HRVRVN 100 4 10.0 WH

HRVRVN 250 4 20.0 WH

HRVRVN 20 4 4.0 ALL

HRVRVN 50 4 10.0 ALL

HRVRVN 300 4 14.0 ALL

HRVRVN 500 4 20.0 ALL

End

\*End ECON Extension keywords

TreeData 15

1 1 100.1DF 0.1 1 0

1 2 50.1DF 1.0 5 0

1 3 40.0DF 2.0 7 0

1 4 30.1DF 3.0 15 0

1 5 20.1DF 4.0 25 0

1 6 10.1DF 5.0 35 0

1 7 10.1DF 6.0 44 0

1 8 10.1DF 7.0 52 0

1 9 10.1DF 8.0 60 0

1 10 10.1DF 9.0 66 0

1 11 10.1DF 10.0 72 0

1 12 15.1DF 11.0 77 0

1 13 15.1DF 12.0 82 0

1 14 15.1DF 13.0 86 0

1 15 15.1DF 14.0 89 0

1 16 10.1DF 15.0 92 0

1 17 5.1DF 16.0 95 0

1 18 5.1DF 17.0 98 0

1 19 5.1WH 18.0 101 0

1 20 5.1WH 19.0 103 0

1 21 10.1RC 10.0 105 0

-999

Process

STOP

### Example 1B keywords – continuous forest-cover management objective

StdIdent

Example\_1B\_StructMgmt - Economically efficient time to harvest an existing stand.

Screen

InvYear 2004

StdInfo 530 0 0 30

Design 1 999 1 0 1

NumCycle 10

\*Turn off any ingrowth and natural regeneration

Estab

NoAuTaly

NoInGrow

End

ThinDBH 2004 6. 16. 0.90 All 0. 10.0

ThinDBH 2014 6. 17. 0.90 All 0. 10.0

ThinDBH 2024 6. 18. 0.90 All 0. 10.0

ThinDBH 2034 6. 19. 0.90 All 0. 10.0

ThinDBH 2044 6. 20. 0.90 All 0. 10.0

ThinDBH 2054 6. 22. 0.90 All 0. 10.0

ThinDBH 2064 6. 25. 0.90 All 0. 10.0

ThinDBH 2074 6. 27. 0.90 All 0. 10.0

ThinDBH 2084 6. 28. 0.90 All 0. 10.0

ThinDBH 2094 6. 30. 0.90 All 0. 10.0

\*Begin ECON Extension keywords

Econ

STRTECON 1 4 0 1

\*Make all harvest "pretend" harvests

PRETEND 1

ANNUCST 3 Mgmt Cost

HRVFXCST 100

HRVVRCST 80 2 6.0 12.0

HRVVRCST 70 2 12.0 16.0

HRVVRCST 50 2 16.0 999.0

HRVRVN 120 4 10.0 DF

HRVRVN 80 4 4.0 DF

HRVRVN 160 4 16.0 DF

HRVRVN 200 4 20.0 DF

HRVRVN 200 4 22.0 DF

HRVRVN 300 4 24.0 DF

HRVRVN 500 4 24.0 DF

HRVRVN 50 4 6.0 WH

HRVRVN 100 4 10.0 WH

HRVRVN 20 4 4.0 ALL

HRVRVN 50 4 10.0 ALL

HRVRVN 300 4 16.0 ALL

HRVRVN 500 4 20.0 ALL

End

\*End ECON Extension keywords

TreeData 15

1 1 100.1DF 0.1 1 0

1 2 50.1DF 1.0 5 0

1 3 40.0DF 2.0 7 0

1 4 30.1DF 3.0 15 0

1 5 20.1DF 4.0 25 0

1 6 10.1DF 5.0 35 0

1 7 10.1DF 6.0 44 0

1 8 10.1DF 7.0 52 0

1 9 10.1DF 8.0 60 0

1 10 10.1DF 9.0 66 0

1 11 10.1DF 10.0 72 0

1 12 15.1DF 11.0 77 0

1 13 15.1DF 12.0 82 0

1 14 15.1DF 13.0 86 0

1 15 15.1DF 14.0 89 0

1 16 10.1DF 15.0 92 0

1 17 5.1DF 16.0 95 0

1 18 5.1DF 17.0 98 0

1 19 5.1WH 18.0 101 0

1 20 5.1WH 19.0 103 0

1 21 10.1RC 10.0 105 0

-999

Process

STOP

### Example 2 keywords – calculate SEV

StdIdent

Example\_2 - Calculate SEV for a perpetual management prescription.

Screen

InvYear 2004

StdInfo 530 1 0 0 30

Design 1 999 1 0 1

NumCycle 10

\*Regenerate the residual stand, limiting natural regen & ingrowth

Estab 2004

NOAUTALY

NOINGROW

PLANT 2004 DF 250

PLANT 2004 WP 350

End

\*Cleaning and commercial thinning

ThinBTA 2034 300. 0.9 0.50 9.0

ThinDBH 2034 4. 12. 0.50 All 50. 0.0

\*Cleaning of natural regen after commercial thinning

ThinBBA 2034 0. 0.8 0.0 5.0

\*Pretend harvests to leave 16 residual trees per acre

ThinDBH 2044 6. 99. 1.0 All 16. 0.0

ThinDBH 2054 6. 99. 1.0 All 16. 0.0

ThinDBH 2064 6. 99. 1.0 All 16. 0.0

ThinDBH 2074 6. 99. 1.0 All 16. 0.0

ThinDBH 2084 6. 99. 1.0 All 16. 0.0

ThinDBH 2094 6. 99. 1.0 All 16. 0.0

\*Begin ECON Extension keywords 1.0

Econ

StrtEcon 1 4 0 1

\*Make all harvests beginning in 2040 "pretend" harvests

PRETEND 2040

ANNUCST 1 Mgmt Cost

SPECCST 1 Cycle\_1 2

SPECCST 2 Cycle\_2 5

PLANTCST 100 7

HRVVRCST 80 2 6.0 12.0

HRVVRCST 70 2 12.0 16.0

HRVVRCST 50 2 16.0 999.9

HRVRVN 50 4 4.0 ALL

HRVRVN 175 4 9.0 ALL

HRVRVN 200 4 12.0 ALL

HRVRVN 225 4 14.0 ALL

HRVRVN 275 4 16.0 ALL

HRVRVN 300 4 18.0 ALL

HRVRVN 350 4 20.0 ALL

HRVRVN 400 4 24.0 ALL

\*Zero price allows output of harvested trees/acre w/o affecting revenue

HRVRVN 0 1 0 ALL

\*Harvests less than 1000 board-feet per acre are pre-commercial

PCTSPEC 0.0 2 1000.0

End

\*End ECON Extension keywords

TreeData 15

1 6 1.1DF 5.0 35 0

1 7 1.1DF 6.0 44 0

1 8 1.1DF 7.0 52 0

1 9 1.1DF 8.0 60 0

1 10 1.1DF 9.0 66 0

1 11 1.1DF 10.0 72 0

1 12 1.1DF 11.0 77 0

1 13 1.1DF 12.0 82 0

1 14 1.1DF 13.0 86 0

1 15 1.1DF 14.0 89 0

1 16 1.1DF 15.0 92 0

1 17 1.1DF 16.0 95 0

1 18 1.1DF 17.0 98 0

1 19 1.1WH 18.0 101 0

1 20 1.1WH 19.0 103 0

1 21 1.1RC 10.0 105 0

-999

Process

STOP

### Example 3 keywords – preferred time to initiate future perpetual prescription

StdIdent

Example\_3 - Economically efficient time to implement future perpetual prescription.

Screen

InvYear 2004

StdInfo 530 0 0 30

Design 1 999 1 0 1

NumCycle 10

\*Turn off any ingrowth and natural regeneration

Estab

NoAuTaly

NoInGrow

End

THINDBH 0 7. 999. 0.0 All 16. 0.0

\*Begin ECON Extension keywords

Econ

StrtEcon 2004 4.0 127 0

\*Make all harvest "pretend" harvests

PRETEND 1 300

ANNUCST 3 Mgmt Cost

HRVVRCST 90 2 6.0 12.0

HRVVRCST 70 2 12.0 16.0

HRVVRCST 50 2 16.0 22.0

HRVVRCST 30 2 22.0 999.0

HRVRVN 90 4 10.0 DF

HRVRVN 80 4 4.0 DF

HRVRVN 140 4 16.0 DF

HRVRVN 250 4 18.0 DF

HRVRVN 300 4 20.0 DF

HRVRVN 400 4 22.0 DF

HRVRVN 500 4 24.0 DF

HRVRVN 50 4 6.0 WH

HRVRVN 100 4 10.0 WH

HRVRVN 250 4 20.0 WH

HRVRVN 20 4 4.0 ALL

HRVRVN 50 4 10.0 ALL

HRVRVN 300 4 14.0 ALL

HRVRVN 500 4 20.0 ALL

End

TreeData 15

1 1 100.1DF 0.1 1 0

1 2 50.1DF 1.0 5 0

1 3 40.0DF 2.0 7 0

1 4 30.1DF 3.0 15 0

1 5 20.1DF 4.0 25 0

1 6 10.1DF 5.0 35 0

1 7 10.1DF 6.0 44 0

1 8 10.1DF 7.0 52 0

1 9 10.1DF 8.0 60 0

1 10 10.1DF 9.0 66 0

1 11 10.1DF 10.0 72 0

1 12 15.1DF 11.0 77 0

1 13 15.1DF 12.0 82 0

1 14 15.1DF 13.0 86 0

1 15 15.1DF 14.0 89 0

1 16 10.1DF 15.0 92 0

1 17 5.1DF 16.0 95 0

1 18 5.1DF 17.0 98 0

1 19 5.1WH 18.0 101 0

1 20 5.1WH 19.0 103 0

1 21 10.1RC 10.0 105 0

-999

Process

STOP

### Example 4 keywords – dynamically initialize a preferred perpetual prescription

STDIDENT

STDIDENT

Example\_4 - Dynamically initiate a future perpetual prescription.

SCREEN

INVYEAR 2004

STDINFO 530 1 0 0 30

DESIGN 1 999 1 0 1

NUMCYCLE 16

TIMEINT 0 10

\*Initialize control variables

compute 1.0

DO\_SEV = 0

WAIT = 0

end

\*Test for current stand at target (90th % > 21" dbh), and set SEVSTART

if 999

DBHDIST(3,5) gt 21.0

then

compute

DO\_SEV = 1

end

\*Harvest current stand leaving 16 residual trees

THINBTA 0 16 1.0 0.0 999.9

\*Set wait-time to 1-year for StrtEcon, and PRETEND

ECON

StrtEcon 1 4 1

PRETEND 1 999

END

\*Regenerate residual stand as part of perpetual prescription

ESTAB

NOAUTALY

NOINGROW

PLANT 1 DF 200

PLANT 1 WH 200

PLANT 1 RC 100

END

endif

\*Track control variables for initiating perpetual prescription

if 0

DO\_SEV gt 0

then

compute

WAIT = WAIT + 1

end

endif

\*Check min volume in 6-20 DBH trees > 5000 Bd Ft volume for "pretend" harvest

if

DO\_SEV eq 1 and SpMcDBH(4,All,0,6.0,21.0,0.0,999.0,0) gt 5000. and WAIT gt 1

then

THINBTA 0 16 1.0 0.0 999.9

endif

\*Begin ECON Extension keywords

ECON

StrtEcon 1 4 0 0

PLANTCST 50 6

HRVVRCST 90 2 6.0 12.0

HRVVRCST 60 2 12.0 16.0

HRVVRCST 30 2 16.0 22.0

HRVVRCST 25 2 22.0 999.0

HRVRVN 175 4 4.0 DF

HRVRVN 300 4 10.0 DF

HRVRVN 350 4 16.0 DF

HRVRVN 450 4 20.0 DF

HRVRVN 475 4 22.0 DF

HRVRVN 500 4 24.0 DF

HRVRVN 50 4 6.0 WH

HRVRVN 100 4 10.0 WH

HRVRVN 250 4 20.0 WH

HRVRVN 120 4 4.0 ALL

HRVRVN 250 4 10.0 ALL

HRVRVN 350 4 14.0 ALL

HRVRVN 500 4 20.0 ALL

\*Zero price outputs harvested trees-per-acre harvested w/o affecting revenue

HRVRVN 0 1 0 ALL

\*Zero price outputs harvested cubic-foot volume by tree w/o affecting revenue

HRVRVN 0 3 0 ALL

\*Zero price outputs harvested cubic-foot volume by log w/o affecting revenue

HRVRVN 0 5 0 ALL

\*Harvests < 5000 board-feet per acre are pre-commercial

PCTSPEC 0.0 2 5000.0

End

\*End ECON Extension keywords

TreeData 15

1 1 100.1DF 0.1 1 0

1 2 50.1DF 1.0 5 0

1 3 40.0DF 2.0 7 0

1 4 30.1DF 3.0 15 0

1 5 20.1DF 4.0 25 0

1 6 10.1DF 5.0 35 0

1 7 10.1DF 6.0 44 0

1 8 10.1DF 7.0 52 0

1 9 10.1DF 8.0 60 0

1 10 10.1DF 9.0 66 0

1 11 10.1DF 10.0 72 0

1 12 15.1DF 11.0 77 0

1 13 15.1DF 12.0 82 0

1 14 15.1DF 13.0 86 0

1 15 15.1DF 14.0 89 0

1 16 10.1DF 15.0 92 0

1 17 5.1DF 16.0 95 0

1 18 5.1DF 17.0 98 0

1 19 5.1WH 18.0 101 0

1 20 5.1WH 19.0 103 0

1 21 10.1RC 10.0 105 0

-999

Process

STOP

### Example 5 keywords – value immature timber or “reprod”

StdIdent

Example\_5 - Value the trees in an immature stand.

Screen

InvYear 2004

StdInfo 530 0 0 30

Design 1 999 1 0 1

NumCycle 10

\*Harvest to create initial conditions for long-term managment

THINDBH 0 7. 999 1.0 All 16. 0.0

\*Begin ECON Extension keywords

Econ

StrtEcon 1 4 127 0

\*Make all harvest "pretend" harvests

PRETEND 1

HRVVRCST 80 2 6.0 12

HRVVRCST 60 2 12.0

HRVRVN 90 4 4.0 DF

HRVRVN 120 4 10.0 DF

HRVRVN 240 4 12.0 DF

End

TreeData 15

1 1 100.1DF 4.0 1 0

1 2 60.1DF 5.0 5 0

1 3 50.1DF 6.0 7 0

1 4 40.1DF 7.0 15 0

1 5 40.1DF 8.0 25 0

1 6 40.1DF 9.0 35 0

1 7 40.1DF 10.0 44 0

1 8 30.1DF 11.0 52 0

-999

Process

STOP

## VII. REFERENCES

Bullard, Steven H., and Thomas J. Straka. 1998. Basics Concepts in Forest Valuation and Investment Analysis. 2nd Ed.

Clutter, Jerome L., James C. Fortson, Leon V. Pienarr, Graham H. Brister, and Robert L. Bailey. 1983. Timber Management: A Quantitative Approach. New York: John Wiley and Sons, Inc.

Davis, Lawrence S. and K. Norman Johnson. 1987. Forest Management, 3rd Ed. New York: McGraw-Hill Publishing.

Crookston, Nicholas L. 1990. User’s Guide to the Event Monitor: Part of Prognosis Model 6. USDA Forest Service, Intermountain Forest and Range Experiment Station, General Technical Report INT-275.

Dixon, Gary E. comp. 2002. Essential FVS: A user’s guide to the Forest Vegetation Simulator. Internal Rep. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Forest Management Service Center. 194p. (Last Revised: March 2007).

Horn, Joseph E., E. Lee Medema, and Ervin G. Schuster. 1986. User’s Guide to CHEAPO II – Economic Analysis of Stand Prognosis Model Outputs. USDA Forest Service, Intermountain Forest and Range Experiment Station, General Technical Report INT-211.

Medema, E. Lee; Hatch, Charles R. Computerized help for the economic analysis of prognosis-model outputs: a user’s manual. Contribution No. 227. Moscow, ID: University of Idaho, Forest, Wildlife and Range Experiment Station; 1982. 72 p.

Reinhardt, Elizabeth, N. L. Crookston (Technical Editors). 2003. The Fire and Fuels Extension to the Forest Vegetation Simulator. USDA Forest Service, Rocky Mountain Research Station, General Technical Report RMRS-GTR-116. Ogden, UT.

Renner, D. 2001. Economic extension (ECON) to FVS, Release 1.0 user’s manual. [draft]. Fort Collins, CO: U. S. Department of Agriculture, Forest Service, Rocky Mountain Research Station.

Renner, David L. and Fred C. Martin. 2002. Using the Fuels and Fire Effects (FFE) and Economic (ECON) Extensions to the Forest Vegetation Simulator (FVS) to Evaluate the Impacts of Silvicultural Regimes. In: Crookston, Nicholas L.; Havis, Robert N., comps. Second Forest Vegetation Simulator Conference; 2002 February 12–14; Fort Collins, CO. USDA Forest Service, Rocky Mountain Research Station, Proc. RMRS-P-25. Ogden, UT.

Van Dyck, Michael G. 2005. Keyword Reference Guide for the Forest Vegetation Simulator. United States Department of Agriculture Forest Service Forest Management Service Center Fort Collins, CO.

Wykoff, W. R., N. L. Crookston, and A. R. Stage. 1982. User's guide to the stand Prognosis Model. USDA Forest Service, Intermountain Forest and Range Experiment Station, General Technical Report INT-133.