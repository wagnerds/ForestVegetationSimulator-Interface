![](data:image/png;base64...)

United States

Department of Agriculture

Forest Service

**Intermountain Research Station**

General Technical Report INT-275

October 1990

![](data:image/png;base64...)

**User’s Guide to the**

**Event Monitor: Part**

**of Prognosis Model**

**Version 6**

**Nicholas L. Crookston**

![](data:image/png;base64...)

Electronic version

Slightly modified

January, 2002

**THE AUTHOR**

**NICHOLAS L. CROOKSTON,** operations research analyst, is a member of the Quantitative Analysis for Forest Manage-

­ment Planning and Control research work unit located at the Intermountain Research Station’s Forestry Sciences Labora­-

tory, Moscow, ID.

**RESEARCH SUMMARY**

The Event Monitor dynamically invokes management activities to be simulated by the Prognosis Model. Activities include simulated thinnings, harvesting, plantings, or any other activity that the simulation model can mimic. The Event

Monitor accepts statements of conditions to be met and a set of activities to be simulated when the conditions are met.

The conditions are logical expressions of stand-state vari­-

ables. The combination of a condition and a set of activities

is considered a rule of stand management. One or more

rules may be used to define a stand management policy.

Stand management policies may be evaluated without

users foretelling the development of stands in an analysis

and manually scheduling activities. If the policy statements are defined by experts so that they apply to the management

of many stands, the system will output suggested manage­ment schedules that reflect the policies of experts for each

stand. The rules that define these policies can be shared between users.

This user’s guide replaces General Technical Report

INT-196 (Crookston 1985). Most old features of the Event Monitor have been retained; several new features have been added as described herein. Several additional arithmetic functions and stand-state variables are now available. New

stand-state variables can be defined as a function of other

stand-state variables, and the new variables can be used

in expressions. Functions of stand-state variables can be coded in place of constants on some Prognosis Model key­-

words. Stand management rules can be labeled and related to each other using labels.

**ACKNOWLEDGMENTS**

Many of the ideas expressed in this document are the result of discussions with colleagues to whom I am grateful: Albert R. Stage, William R. Wykoff, Gary Dixon, Dan

Schroeder, and Jim BrickelI have been particularly helpful. Many users of the previous version have also contributed useful comments and suggestions.

Intermountain Research Station

324 25th Street Ogden, UT 84401

**CONTENTS**

Page

Introduction 1

Event Monitor Use 2

IF, THEN, and ENDIF 2

Waiting Time for Activity Scheduling 2 Illustrate IF, THEN, and ENDIF 2

Detailed Instructions 3 Basic Keywords 3

When Expressions Are Evaluated 3 When Event Monitor Variables Are Defined 4

Coding Expressions 4

Advanced Features 5

The COMPUTE Keyword 5 Coding Expressions on Activity Keywords 6

Policy Labeling: AGPLABEL and SPLABEL 7 The ALSOTRY Keyword 8

Summary 10

References 10

Appendix A: Output From Example 1 11

Appendix B: Event Monitor Variables 14

Group 1: Always Defined 14 Group 2: Defined Only After Thinning Each Cycle 15

Group 3: Defined When Cycle 2 Starts 16 Group 4: Defined by Extensions to the Prognosis

Model 16

Appendix C: Functions and Operators 18

Prognosis Model Function Descriptions 19

Appendix D: Keyword Summary 23

LIST OF EXAMPLES

Example 1: Illustrate IF, THEN, and ENDIF 2

Example 2: Using the COMPUTE Feature to Define

Two Variables 6

Example 3: Using the PARMS Feature on Thinning

Keywords 7

Example 4: Illustrate AGPLABEL, SPLABEL, and

ALSOTRY 9

**User’s Guide to the Event**

**Monitor: Part of Prognosis Model Version 6**

**Nicholas L. Crookston**

**INTRODUCTION**

Stand management activities are often contingent upon several factors. Thinning may be called for if the stand is too dense, or spraying may be required if an insect population is causing too much damage. Usually, users of stand-growth simulation models must foretell the occurrence of stand conditions that require management actions and preschedule the program options that represent those actions.

The Event Monitor offers an alternative method of scheduling activities: You

specify a set of conditions that must occur, or thresholds that must be reached. The conditions are called an event. You also specify a set of management activities for the model to simulate when and if the event occurs. For example, suppose you wish

to schedule a thinning only if the stand crown competition factor (Krajicek and oth-

­ers 1961) exceeds 150, trees per acre exceed 500, and age is greater than 20 and less than 60 years. Using the Event Monitor, the condition is specified via a logical ex-pression followed by the activities (represented by Prognosis Model options) that are to be invoked when that expression is true.

Taken together, an event and the management activities may be viewed as a

management rule. One or more rules may be considered a management policy state­-

ment. Thus, policy statements may be evaluated using the Prognosis Model without users foretelling the development of each stand in an analysis in order to manually schedule activities.

If the policy statements are defined by management experts in such a way that

they apply to the management of a large number of stands, the Event Monitor can be used to provide suggested management schedules that reflect the management policies of those experts. The rules that define these policies can be shared between you and your colleagues. In this way, the Prognosis Model can be used to share management expertise.

The Event Monitor was added to the Prognosis Model when Version 5 was created

(Crookston 1985). This guide applies to Version 6 of the model and completely re­places the original version.

Most features of the old version have been retained, and several arithmetic func­-

tions and stand-state variables that can be used in expressions have been added.

Further, new stand-state variables can be defined as functions of other stand-state

variables, and the new variables can be used in expressions. Functions of stand-­ state variables can be coded in place of constants on some Prognosis Model key­-

words. Stand management rules can be labeled and related to each other using

labels. The only deleted feature concerns some species-specific density measures

as described in appendix B.

In this guide, straightforward applications are presented first and advanced

features follow. You should already be familiar with the Prognosis Model. Terms, operational rules, and concepts explained in the Prognosis Model user’s guides

(Ferguson and Crookston 1984; Wykoff 1986; Wykoff and others 1982) are used here without explanation.

**EVENT MONITOR USE**

**IF, THEN, and ENDIF**

An event is designated by an IF keyword record, followed by a logical expres-

­sion. The expression is coded on one or more supplemental data records. It may contain constants, arithmetic operators, parentheses, relational and logical opera-

­tors (greater than (GT), less than (LT), equal (EQ), AND, OR, etc.), and certain variables. Following the logical expression, a THEN keyword record is entered;

it signals the end of the logical expression and the beginning of the activities that will be scheduled only when the expression is true. Any Prognosis Model keyword option (including those found in extensions) that can be scheduled by entering a cycle number or year in the first numeric field can be scheduled by the Event

Monitor. An ENDIF keyword is entered to signal that normal activity processing should resume.

**Waiting time for Activity Scheduling**

The value in field 1 of activity keyword records is added to the year the event

occurs. The sum becomes the year the activity is scheduled. Therefore, the value

in field 1 is called the waiting time when the activity keyword is used in the con-­

text of an Event Monitor rule.

**Illustrate IF,**

**THEN, and ENDIF**

Assume the following policy: If before-thinning crown competition factor

(BCCF) is greater than 150, and before-thinning trees per acre (BTPA) is greater

than 500, and age is greater than 20 and less than 60, then thin from below to

a residual stand density of 300 trees per acre. This policy can be simulated with

the keywords outlined below:

|  |  |
| --- | --- |
|  | Example 1: Illustrate IF, THEN, and ENDIF |
|  | Keyword record |
| Reference |  |
| line | Keyword Field 1 Field 2 Field 3 Field 4 Field 5 Field 6 Field 7 |
| 1 | STDIDENT |
| 2 | EXAMPLE1 Illustrate IF, THEN, and ENDIF |
| 3 | INVYEAR 1990. |
| 4 | NUMCYCLE 7. |
| 5 | IF |
| 6 | BCCF GT 150 AND BTPA GT 500 AND AGE & |
| 7 | GT 20 AND AGE LT 60 |
| 8 | THEN |
| 9 | THINBTA 0. 300. |
| 10 | ENDIF |
| 11 | STDINFO 118. 590. 30. 135. 50. 56. |
| 12 | PROCESS |
| 13 | STOP |

The tree data and some of the output created by running this example are in appendix A, further explanation of the input file follows:

Lines 1 and 2: Enter the stand identification and a run title.

Line 3: Specify the inventory year.

Line 4: Specify the number of cycles.

Line 5: IF signals that a logical expression follows.

Lines 6 and 7: The logical expression is coded “free form” (that is, characters

need not be placed in specific columns) on one or more supplemental data records that follow the IF keyword. An ampersand at the end of a line signals that the expression is continued on the following record.

Line 8: THEN signals that the activities (options specified by date or cycle) that

follow will not be scheduled until after the event happens; that is, when the logi­-

cal expression is true.

Line 9: THINBTA is a thinning option that will be scheduled in the same year that the event happens; thus, a zero is coded in field 1. The residual trees per acre are coded in field 2.

Line 10: ENDIF marks the end of the conditionally specified options.

Line 11: Enter data specific to the stand such as the forest code.

Line 12: All keywords have been entered; begin processing.

Line 13: Stop the Prognosis Model.

**DETAILED INSTRUCTIONS**

**Basic Keywords**

As illustrated above, the IF keyword is used to signal that a logical expression follows. The THEN keyword signals that the activities that follow should be sched-

­uled only when the logical expression is true. Note that several activities may fol­-

low a THEN keyword. Scheduling activities that follow the ENDIF keyword does

not depend on the logical expression.

**IF** Signals that the logical expression follows on one or more supplemental

data records.

field 1: The minimum waiting time before the event may happen again; default is zero years.

Supplemental data record(s):

Contains a logical expression like the one illustrated in example 1.

Use an ampersand (&) to indicate that an expression is continued on

the next record. You may use a maximum of 200 characters in an ex­-

pression. See the section “Coding Expressions” for more instructions.

**THEN** Signals that the activities that follow will be scheduled when the event

happens. Field 1 of this keyword is described later.

**ENDIF** Activities that follow an ENDIF are scheduled normally.

**When**

**Expressions Are**

**Calculated**

The Event Monitor evaluates expressions at each of two different times during

a growth cycle (fig. 1): once at the beginning of the growth cycle prior to thinnings,

and once after thinnings. A logical expression that tests on before-thin density can

be used to trigger a thinning during the same cycle. If the logical expression uses

a variable that depends on an after-thin density, a thinning cannot be scheduled

for the same cycle but it can be scheduled for a later cycle by coding a waiting time longer than the current cycle length in field 1 on the thinning keyword.

**Figure 1**—The Event Monitor is

called at the beginning of each

time step and after simulated cutting.

For all stands

Input and initialization

For all time steps

Call Event Monitor

Simulate Cutting

Call Event Monitor

Predict Growth

Update state variables

Add Regeneration

Next time step

Write Reports

Next stand

The Regeneration Establishment Model is called near the end of a cycle. Therefore, it is possible to trigger a call to the establishment model as a response

to a before-thin or an after-thin density.

You can schedule a thinning in response to detecting that a thinning has occurred. But the conditionally scheduled thinning cannot be simulated during

the same cycle the event is detected because the event is, itself, another thinning. You can specify that the conditionally scheduled thinning be scheduled 10 years after the event occurs by coding a waiting time in field 1 of the desired thinning keyword record. If the cycle length is less than or equal to the waiting time, the

conditionally scheduled thinning will be simulated in the following cycle.

**When Event Monitor Variables Are Defined**

The list of variables that can be used in expressions is in appendix B. The list

is divided into four groups based on when the variables are defined. If any vari­-

able is undefined when a logical expression is evaluated, the expression is false.

Variables listed in group 1 are always known; you can include them in expres­-

sions either by themselves or with those listed in the other groups.

Group 2 variables are undefined when the Event Monitor evaluates expressions

prior to thinnings. However, they are correctly defined when expressions are evaluated following thinnings, even if no thinnings occur.

Group 3 variables are not defined until after the first Prognosis Model cycle.

For example, the stand accretion is computed after the second time the Event Monitor evaluates logical expressions each cycle. Therefore, the stand accretion variable is assigned the accretion from the previous cycle. Variables that measure

change, such as DBA (delta basal area, the change in basal area from cycle to

cycle), are computed by subtracting the value stored from the previous cycle from the current value. These variables are also undefined until the beginning of the second Prognosis Model cycle. After the second cycle starts, group 3 variables are defined.

Group 4 variables are assigned values by Prognosis Model extensions. The

value of these variables remains undefined unless the appropriate extension defines them.

**Coding**

**Expressions**

Expressions consist of variables (appendix B), constants, parentheses, arithme­-

tic operators, and logical operators in logical expressions. All of the permissible operators are listed in appendix C. When coding expressions, follow these rules:

• A parenthesis or blank must precede and follow logical operators: AGE GT

25 is valid, AGE GT(25) is valid, AGE GT25 is **invalid.**

• A parenthesis, constant, or variable must separate two arithmetic operators: AGE\*-2.5 is **invalid,** AGE\*(-2.5) and -2.5\*AGE are valid.

• Operators are executed in order of precedence given in appendix C, or parentheses may be used to control the precedence of evaluation.

• When equally ranked operations are found, evaluation proceeds from left

to right.

• Constants are treated as floating point numbers whether or not adecimal

point is coded. For example, 300 is converted to 300.0.

• Arguments to functions found in appendix C are considered expressions.

An argument to a function may reference any function including the original function. That is, DECADE(TIME(A,B,C),D/E,ALOG(4\*ALOG(F))) is valid

if variables A through F are appropriately defined.

• An ampersand (&) signals that expressions are continued on the next line.

Any characters that follow the ampersand are output as comments.

• Expressions may contain up to 200 characters. Strings of blanks count as one

character; ampersands and characters that follow ampersands do not count.

• The following are **valid** (and equivalent) logical expressions:

(BTPA\*2 GE 1000 OR AGE GT 50.)

(NOT BTPA LT 500) OR (NOT AGE LE 50.0)

NOT (BTPA LT 500 AND AGE LE 50)

• The following are **invalid:**

(ATPA .LT. 500.)—the inclusion of the periods before and after the

less-than operator is valid in FORTRAN but **not** in the Event Monitor.

(NOT (BTPA LT 50)—Unbalanced parentheses.

**ADVANCED FEATURES**

Since its introduction, the Event Monitor has been enhanced as follows:

1. A COMPUTE option allows you to define variables that can be used in logical

expressions, in other COMPUTE options, and as parameters on keyword records.

2. You can code expressions in place of constant parameters on some activity key­-

words. For example, the residual stand density on thinning keywords can be a func­-

tion of current stand statistics.

3. You can relate rules to each other by labeling them with the same name. These related rules can be treated like a fully described management policy. Stands are labeled with the name(s) of the management policies that apply to them.

4. You can create decision trees when using the Event Monitor in conjunction

with the Parallel Processing Extension (PPE) of the Prognosis Model (Crookston

and Stage 1989).

**The COMPUTE**

**Keyword**

The COMPUTE keyword allows you to define up to 200 variables expressed as func­tions of Event Monitor variables (appendix B), constants, and variables previously defined using the COMPUTE feature. The COMPUTE option can be scheduled for specific years, and the value of variables may depend on an event.

**COMPUTE** Enter one or more expressions that define variables.

field 1: The date or cycle in which the expression is to be evaluated; default is 1. Enter a 0.0 if you want the expression to be evaluated every cycle.

Supplemental data record(s):

Contains expressions such as: NORMAL = 25000\*(BADBH+1)\*\*

(–1.588). Names that appear on the left-hand side of the equal sign

may not be longer than eight characters and may not be names found in appendix C. Variable names found on the right-hand side of an equal sign must be previously defined using the COMPUTE option or be variables found in appendixes B or C. Use an ampersand (&) to indicate that an expression is continued on the next record. Code subsequent expressions on subsequent supplemental data records and enter an END keyword after the last expression is entered. Use up to 200 characters for each expression.

The following keyword segment illustrates how to use the COMPUTE option.

Note that this keyword segment does not define a complete run.

|  |  |
| --- | --- |
|  | Example 2: Using the COMPUTE feature to define two variables |
|  | Keyword record |
| Reference |  |
| line | Keyword Field 1 Field 2 Field 3 Field 4 Field 5 Field 6 Field 7 |
| 1 | COMPUTE 0.0 |
| 2 | NORMAL = 25000\*(BADBH+1)\*\*(-1.588) |
| 3 | PROPCUT = NORMAL/BTPA |
| 4 | END |

Line 1: The COMPUTE keyword has a 0.0 in field 1 indicating that the variables (NORMAL in line 2, and PROPCUT in line 3) should be calculated every cycle.

Line 2: Compute the NORMAL stocking in trees per acre using an equation

based on Haigs (1932) yield tables for western white pine type (see Wykoff and others 1982, page 71). The variable BADBH is the average before-thinning diam­-eter at breast height (see group 1 in appendix B).

Line 3: Compute PROPCUT, the proportion of the current trees per acre that

need to be cut to reach NORMAL stocking.

Line 4: Signal the end of COMPUTE processing.

**Coding**

**Expressions on Activity**

**Keywords**

You may code expressions in place of constant parameters on many activity key­-

word records. This is possible for all of the thinning keywords, all of the growth

rate multiplier keywords, the top-killing keywords, the FIXMORT keyword, and

the defect keywords MCDEFECT and BFDEFECT. If a keyword is not an activity

keyword, this feature may not be used (there are two exceptions, THEN and

ALSOTRY, discussed in the PPE user’s guide, Crookston and Stage 1989).

To code an expression on an activity keyword record, do the following:

1. Code the keyword in the first eight columns and the date/cycle in field 1

of the keyword record as done when this feature is not used.

2. For the other parameters, code

**PARMS** (arg1,arg2,...,argn)

starting between columns 21 and 30 of the keyword record. Each “argn" is an ex­pression using constants, variables found in appendix B, and any of the functions and operators from appendix C except the logical operators. Use an ampersand

(&) to continue on to the following record.

3. Ensure that parameter values are within legal limits. For example, say

that arg, is the cutting efficiency used on a thinning keyword. You must take

care to insure that the value of the expression coded as arg3 is bounded by 0.0

and 1.0, legal range for the cutting efficiency parameter. When PARMS is not

used, the Prognosis Model ensures that the values are within legal limits.

4. Supply all of the parameters used by the activity keyword. When the

PARMS feature is **not** used, default values are supplied when a keyword field

is left blank.

5. Use variables that are defined when the activity is accomplished by the

Prognosis Model. If the PARMS function references a variable that is not defined when the activity is called for by the model, the activity is CANCELED. For

example, if a group 2 variable is used to define the residual density for a thinning

activity, the function will be undefined when the thinning is scheduled and the thinning will be canceled.

6. Use variables defined via COMPUTE if you wish.

7. Use the PARMS feature on activities that are conditionally scheduled or

scheduled for a specific date or cycle.

Study the following examples of using the PARMS feature.

|  |  |
| --- | --- |
|  | Example 3: Using the PARMS feature on thinning keywords |
|  | Keyword record |
| Reference |  |
| line | Keyword Field 1 Field 2 Field 3 Field 4 Field 5 Field 6 Field 7 |
| 1 | THINDBH 1990. PARMS (10.,999.,1.0,0.,0.,0.,0.) |
| 2 | THINDBH 1990. 10. |
| 3 | THINBTA 1990. PARMS (BTPA-SPMCDBH(1,0,3),1.,0.,999.,0.,999.) |
|  |  |
| 4 | IF |
| 5 | PROPCUT LT 1.0 |
| 6 | THEN |
| 7 | THINDBH 0. PARMS (0.,999.,PROPCUT,0.,0.,0.,0.) |
| 8 | ENDIF |

Lines 1 to 2: These two THINDBH keywords are equivalent; both request that

all trees between 10 and 999 inches d.b.h. be cut (fields 2 and 3), that the cutting efficiency be 1.0 (field 4), that all species be cut (field 5), and that the residual trees per acre and basal area per acre within the cut diameter class be zero (fields 6

and 7). Note that only the lower diameter is specified in the second keyword; defaults are supplied by the Prognosis Model for other fields.

Line 3: The residual stand density for a thin from below to a trees-per-acre value

(THINBTA) is computed using the Event Monitor variable BTPA, before-thinning trees per acre, and the SPMCDBH function (described in appendix C). The resid-

­ual trees per acre is the difference between the total number of trees and the num­ber of trees that carry tree-value class code 3 (IMC=3).

The sequence that follows (lines 4 to 8) result in cutting every cycle such

that a normal stocking curve is followed.

Lines 4 to 5: If the proportion of trees—PROPCUT as defined using the

COMPUTE keywords described in example 2—is less than 1.0, then schedule

a thinning option.

Line 7: Use the THINDBH option to actually do the thinning. The PROPCUT

is entered as the cutting efficiency. Other arguments specify all of the trees in the diameter range and all species.

Line 8: End the activity group.

These keyword segments do not define complete runs.

**Policy Labeling:**

**AGPLABEL and**

**SPLABEL**

A condition described with a logical expression combined with a set of activities

is considered a rule of stand management. One or more rules may be used to de­-

fine a stand management policy. You can label rules in the Event Monitor. Two

or more rules can be related to one stand management policy by labeling them with the same label. For example, say you have a rule for precommercial thinning, an­other for commercial thinning, and another for final harvest. You may give this management policy a name such as *intensive* and relate the three rules to each other by labeling each of them *intensive.*

Additionally, suppose that the commercial thinning and final harvest rules are appropriate for another stand management policy called *extensive.* By labeling

these two rules with both *intensive* and *extensive* labels, two different stand man­agement policies are defined.

A stand can be labeled with the name of the appropriate stand management pol­-

icy. For example, if a stand is labeled *intensive,* then the only stand management rules that apply to the stand are those labeled *intensive.* By alternately labeling

a stand *intensive* for one run of the Prognosis Model and *extensive* for another run, the yields for both management policies may be conveniently simulated. Further­-

more, a stand may be labeled with a list of several stand management policies.

Let’s say you have described two regeneration systems and labeled one *clear­- cutting* and the other *shelterwood.* For a run of the Prognosis Model, you could

predict the yield derived from running a combined stand management policy by labeling the stand with two labels, *intensive* and *shelterwood,* for example.

Rules are labeled using an *A*ctivity *G*roup *P*olicy *Label* keyword called

AGPLABEL. The label is called an activity group label set because more than

one name may be associated with the activity group. A *S*tand *P*olicy *Label* **set**

is a list of policies that apply to the stand and it is entered using the SPLABEL

keyword. **An activity group will not be scheduled if its label set and the**

**stand’s label set do not contain a common member.**

If more than one SPLABEL set is specified for a stand, or if more than one AGPLABEL set is specified for a single activity group, the sets specified last

will be used and the others will be ignored. If no SPLABEL set is specified, the

default stand policy label set is the union over all of the activity group policy label

sets. The SPLABEL set is assigned to activity groups where no AGPLABEL is defined. If no SPLABEL and no AGPLABEL keywords are used in the run, then

none of the logic associated with the labeling scheme is used by the model.

The keyword formats are:

**AGPLABEL** Enter the policy labels applicable to a specific activity group on supplemental data records that follow this keyword. The keyword must follow the THEN keyword to which it applies and be entered before the ENDIF keyword (another case is described below under the ALSOTRY keyword).

Supplemental data record(s)

Each label must be separated by one comma and the total number

of characters for all policies may not exceed 100 including commas. Use an ampersand (&) to indicate that the list is continued on the next record. Sequences of more than one blank are converted to

one blank and lower-case letters are converted to upper-case let-

ters. Any character may be used as part of the label except com­-

mas, periods, and ampersands.

**SPLABEL** Enter the policy labels applicable to a specific stand on supplemen-

­tal data records that follow this keyword. See AGPLABEL for a description of how to code the supplemental data record.

Policy labeling is most useful when using the PPE (Crookston and Stage 1989).

Documentation of the PPE contains a complete description and examples of how

the Event Monitor processes the label sets.

**The ALSOTRY**

**Keyword**

In the PPE, ALSOTRY signals that an alternative activity group should be scheduled for the stand. When the logical expression is true, the PPE makes

a duplicate copy of the stand’s state-variables called a replicate. The growth of

a stand replicate is simulated as if it were another unique stand in the PPE. For

the original stand, the activity group that follows the THEN keyword is scheduled, and for the replicate, the activity group that follows the ALSOTRY keyword is

scheduled. If additional ALSOTRY keywords are specified, additional replicates

are created.

ALSOTRY can be used to define alternative policies even when not using the

PPE. For example, say that both *intensive* and *extensive* management policies call for a commercial thinning when density is too high. But the *intensive* stand man­agement policy also calls for fertilization (Stage and others 1990). In this simple

example, one logical expression is used to define high density. The first activity group follows the THEN keyword, contains the thinning and fertilization activi­-

ties, and is labeled *intensive.* The second activity group follows the ALSOTRY

keyword, contains only the thinning activity, and is labeled *extensive.* The ENDIF

keyword follows the second activity group. If the SPLABEL is extensive and the event occurs, the activities associated with the ***extensive*** policy will be simulated

and the ***intensive*** activities will be ignored.

Note that ALSOTRY keywords can be used without using the PPE, and there will be no errors as long as stand duplication is not required to simulate the run. Stand duplication is not necessary if activity group label sets are nonoverlapping and the stand label set contains only one label that is also in an activity group label.

**ALSOTRY** Signals that an alternative group of activities should be scheduled when the event occurs. Field 1 is used by the PPE.

Example 4 illustrates an application using APGLABEL, SPLABEL, and

ALSOTRY keywords by expanding on example 1.

|  |  |
| --- | --- |
|  | Example 4: Illustrate AGPLABEL, SPLABEL, and ALSOTRY |
|  | Keyword record |
| Reference |  |
| line | Keyword Field 1 Field 2 Field 3 Field 4 Field 5 Field 6 Field 7 |
| 1 | STANDID |
| 2 | EXAMPLE4 Illustrate AGPLABEL, SPLABEL, and ALSOTRY |
| 3 | INVYEAR 1190. |
| 4 | NUMCYCLE 10. |
| 5 | IF |
| 6 | BCCF GT 150 AND BTPA GT 500 AND AGE & |
| 7 | GT 20 AND AGE LT 60 |
| 8 | THEN |
| 9 | THINBTA 0. 300. |
| 10 | FERTILIZ 1. |
| 11 | AGPLABEL |
| 12 | intensive |
| 13 | ALSOTRY |
| 14 | THINBTA 0. 300. |
| 15 | AGPLABEL |
| 16 | extensive |
| 17 | ENDIF |
| 18 | STDINFO 118. 710. 30. 135. 50. 56. |
| 19 | SPLABEL |
| 20 | intensive |
| 21 | PROCESS |
| 22 | STOP |

Lines 1 and 2: Enter the stand identification and a run title.

Lines 3 and 4: Specify the inventory year and number of cycles.

Line 5 through 7: Specify the event using the same logic used in example 1.

Line 8: THEN signals that the first activity group follows.

Lines 9 and 10: The THINBTA and FERTILIZ (Stage and others 1990) are two activities that form the first activity group.

Lines 11 and 12: AGPLABEL signals that the activity group policy label set follows on the next record. The label set is *intensive.*

Line 13: ALSOTRY signals that the second activity group follows.

Line 14: The THINBTA activity is the only activity in the second group.

Lines 15 and 16: AGPLABEL signals that the activity group policy label set, *extensive* in this case, follows on the next record.

Line 17: ENDIF marks the end of the conditionally specified options.

Line 18: Enter data specific to the stand such as the forest code.

Lines 19 and 20: SPLABEL signals that the stand policy label set follows. In this example, *intensive* is entered. For a different run of the Prognosis Model *extensive* might be desired. If the PPE was being used both *intensive* and *extensive* could

be entered and the PPE would simulate both policies as alternatives.

Line 21: Signals that all of the keywords have been entered and that the stand

should be processed.

Line 22: Stop the Prognosis Model.

**SUMMARY**

Since publication in 1985, the Event Monitor has become popular with Progno-

sis Model users. The success of the initial system and the need for new features

led to the development of this version. The enhanced system is upwardly com­-patible with the original system, except for the exclusion of a few variables as described in appendix C. Some of the new components are most useful when

the PPE is being used.

New features include additional arithmetic functions and stand-state variables

that can be used in expressions. A new COMPUTE keyword allows you to define additional stand-state variables as a function of other stand-state variables. The additional variables can be used in other expressions. The new PARMS feature allows parameters to be defined as expressions on activity keyword records.

A stand management rule is defined to be a logical expression and the accom­-

panying activity group. Other new keywords, AGPLABEL and SPLABEL, allow stand management rules and stands to be labeled and related to each other. One

or more rules are called a stand management policy.

Using this system, stand management policies may be evaluated without users foretelling the development of stands in an analysis and manually scheduling activities. If the policy statements are defined by experts so that they apply to

the management of many stands, the system will output suggested management schedules that reflect the policies of these experts for each stand. The rules that define these policies can be shared between users.

This user’s guide replaces General Technical Report INT-196 (Crookston 1985).

**REFERENCES**

Crookston, N. L. 1985. User’s guide to the Event Monitor: an addition to the

Prognosis Model. Gen. Tech. Rep. INT-196. Ogden, UT: U.S. Department of

Agriculture, Forest Service, Intermountain Research Station. 36 p.

Crookston, N. L.; Stage, A. R. 1989. User’s guide to the Parallel Processing Ex­-

tension of the Prognosis Model. Moscow, ID: U.S. Department of Agriculture, Forest Service, Intermountain Research Station, Forestry Sciences Laboratory.

143 p. Review draft.

Ferguson, Dennis E.; Crookston, Nicholas L. 1984. User’s guide to the Regener­-

ation Establishment Model—a Prognosis Model extension. Gen. Tech. Rep.

INT-161. Ogden, UT: U.S. Department of Agriculture, Forest Service, Inter­mountain Research Station. 23 p.

Krajicek, J. E.; Brinkman, K A.; Gingrich, S. F. 1961. Crown competition—a

measure of density. Forest Science. 7(1): 35-42.

Stage, Albert R.; Crookston, Nicholas L.; Shafii, Bahman; Moore, James; Olson,

John. 1990. Representing growth response to fertilization in the Prognosis

Model for Stand Development. Res. Note INT-392. Ogden, UT: U.S. Depart-

­ment of Agriculture, Forest Service, Inter-mountain Research Station. 7 p.

Wykoff, W. R. 1986. Supplement to the user’s guide for the Stand Prognosis

Model—Version 5.0. Gen, Tech. Rep. INT-208. Ogden, UT: U.S. Department

of Agriculture, Forest Service, Inter-mountain Research Station. 36 p.

Wykoff, W. R.; Crookston, N. L.; Stage, A. R. 1982. User’s guide to the Stand

Prognosis Model. Gen. Tech. Rep. INT-133. Ogden, UT: U.S. Department

of Agriculture, Forest Service, Inter-mountain Forest and Range Experiment

Station. 112 p.

**APPENDIX A: OUTPUT FROM EXAMPLE 1**

The tree data file used in running example 1 is listed below. The data on each record are arranged according to the default tree data format for Version 6 of the Prognosis Model. Part of the output created by running the example is listed on

the following two pages. This output was generated using the Inland Empire ver­sion 6.00 with Regeneration Establishment Model version 2.0.

|  |
| --- |
|  |
| Column Rule |
| ....+....1....+....2....+....3....+....4....+.... |
|  |
|  |
| 101001 1lLP 115 10 73 0 04 0 0 0 0 0 011 |
| 101002 11DF 80 0 0 0 06 0 0 0 0 0 022 |
| 102003 21DF 65 23 30 0 08 0 0 0 0 0 01 |
| 102004 11L 79 6 75 0 03 0 0 0 0 0 011 |
| 102005 1EL 346 0 0 0 0010 0 0 0 0 032 |
| 103006 11L 80 7 63 56 0397 0 0 0 0 022 |
| 103007 1lGF 62 20 38 0 05 0 0 0 0 0 011 |
| 103008 11L 84 0 5 0 04 0 0 0 0 0 011 |
| 103009 21LP 95 11 60 0 03 0 0 0 0 0 011 |
| 104010 1lDF 100 10 70 0 00 0 0 0 0 0 011 |
| 104011 11L 82 12 65 0 0550 0 0 0 0 011 |
| 105012 1lDF 12 0 11 0 426 0 0 0 0 0 022 |
| 105013 1lDF 19 0 13 0 475 0 0 0 0 0 022 |
| 105014 18LP 72 0 0 0 0011 0 0 0 0 032 |
| 105015 51GF 1 0 3 0 07 0 0 0 0 0 022 |
| 105016 1lGF 50 9 30 0 07 0 0 0 0 0 011 |
| 106017 1lDF 100 10 65 0 04 0 0 0 0 0 011 |
| 106018 1lDF 61 12 35 0 08 0 0 0 0 0 011 |
| 106019 1lDF 127 16 67 0 04 0 0 0 0 0 011 |
| 107020 00 0 0 0 0 00 0 0 0 0 0 080 |
| 108021 21LP 96 5 60 0 03 0 0 0 0 0 022 |
| 108022 1lDF 104 9 55 49 0596 0 0 0 0 022 |
| 108023 21LP 85 0 0 0 03 0 0 0 0 0 011 |
| 109024 11GF 109 10 65 0 07 0 0 0 0 0 011 |
| 109024 1lGF 109 10 65 0 07 0 0 0 0 0 011 |
| 109025 1lDF 94 18 60 0 04 0 0 0 0 0 011 |
| 110026 21DF 32 6 17 0 325 0 0 0 0 0 022 |
| 110027 41DF 1 0 0 0 07 0 0 0 0 0 022 |
| 110028 1Ldf 58 10 28 0 07 0 0 0 0 0 011 |
| 110029 21DF 50 10 25 0 373 0 0 0 0 0 011 |
| 111030 1lGF 66 14 30 0 07 0 0 0 0 0 011 |

STAND PROGNOSIS SYSTEM VERSION 6.00 – INLAND EMPIRE 09-12-1990 11:09:22

----------------------------------------------------------------------------------------------------------------------------------

OPTIONS SELECTED BY INPUT

----------------------------------------------------------------------------------------------------------------------------------

KEYWORD PARAMETERS:

-------- -----------------------------------------------------------------------------------------------------------------------

STDIDENT

STAND ID= EXAMPLE1 Illustrate IF, THEN, and ENDIF

INVYEAR INVENTORY YEAR= 1990

NUMCYCLE NUMBER OF CYCLES= 7

IF MINIMUM DELAY TIME BETWEEN RESPONSES TO THE EVENT = 1

BCCF GT 150 AND BTPA GT 500 AND AGE &

GT 20 AND AGE LT 60

THEN ACTIVITIES WHICH FOLLOW WILL NOT BE SCHEDULED UNTIL THE EVENT HAPPENS (WHEN THE LOGICAL EXPRESSION IS TRUE).

THINBTA DATE/CYCLE= 0; RESIDUAL= 300.00; PROPORTION OF SELECTED TREES REMOVED= 1.000

DBH OF REMOVED TREES WILL RANGE FROM .0 TO 999.0 INCHES, AND

HEIGHT OF REMOVED TREES WILL RANGE FROM .0 TO 999.0 FEET.

ENDIF ACTIVITIES WHICH FOLLOW WILL BE SCHEDULED.

STDINFO FOREST-LOCATION CODE= 118; HABITAT TYPE=590; AGE= 30; ASPECT AZIMUTH IN DEGREES= 135.; SLOPE= 50.%

ELEVATION(100’S FEET)=56.0; LATITUDE IN DEGREES= 45.

HABITAT TYPE MAPPED TO 510 FOR THIS PROJECTION.

PROCESS PROCESS THE STAND.

----------------------------------------------------------------------------------------------------------------------------------

OPTIONS SELECTED BY DEFAULT

----------------------------------------------------------------------------------------------------------------------------------

TREEFMT (I4,T1,I7,F6.0,I1,A3,F4.1,F3.1,2F3.0,F4.1,I1,3(I2,I2),2I1,I2,2I3,2I1)

DESIGN BASAL AREA FACTOR= 40.0; INVERSE OF FIXED PLOT AREA= 300.0; BREAK DBH= 5.0

NUMBER OF PLOTS= 11; NON-STOCKABLE PLOTS= 1; STAND SAMPLING WEIGHT= 11.00000

STAND ATTRIBUTES ARE CALCULATED PER ACRE OF STOCKABLE AREA. STAND STATISTICS

IN SUMMARY TABLE ARE MULTIPLIED BY .909 TO INCLUDE TOTAL STAND AREA.

----------------------------------------------------------------------------------------------------------------------------------

ACTIVITY SCHEDULE

STAND ID= EXAMPLE1 MANAGEMENT ID= NONE Illustrate IF, THEN, and ENDIF

----------------------------------------------------------------------------------------------------------------------------------

CYCLE DATE EXTENSION KEYWORD DATE PARAMETERS:

----- ---- --------- -------- ---- ------------------------------------------------------------------------------------------

1 1990

2 2000

3 2010

4 2020

5 2030

6 2040

7 2050

----------------------------------------------------------------------------------------------------------------------------------

CALIBRATION STATISTICS:

LP DF L GF

---- ---- ---- ----

NUMBER OF RECORDS PER SPECIES 4 14 4 5

NUMBER OF RECORDS WITH MISSING HEIGHTS 1 2 0 0

NUMBER OF RECORDS WITH BROKEN OR DEAD TOPS 0 1 1 0

NUMBER OF RECORDS WITH MISSING CROWN RATIOS 0 1 0 0

NUMBER OF RECORDS AVAILABLE FOR SCALING

THE DIAMETER INCREMENT MODEL 3 9 3 4

RATIO OF STANDARD ERRORS

(INPUT DBH GROWTH DATA : MODEL) 1.00 .66 1.00 1.00

WEIGHT GIVEN TO THE INPUT GROWTH DATA WHEN

DBH GROWTH MODEL SCALE FACTORS WERE COMPUTED .00 .77 .00 .00

INITIAL SCALE FACTORS FOR THE

DBH INCREMENT MODEL 1.00 .85 1.00 1.00

NUMBER OF RECORDS AVAILABLE FOR SCALING

THE SMALL TREE HEIGHT INCREMENT MODEL 0 4 0 0

INITIAL SCALE FACTORS FOR THE SMALL TREE

HEIGHT INCREMENT MODEL 1.00 1.00 1.00 1.00STAND PROGNOSIS SYSTEM VERSION 6.00 – INLAND EMPIRE 09-12-1990 11:09:24

STAND ID: EXAMPLE1 MANAGEMENT CODE: NONE Illustrate IF, THEN, and ENDIF

STAND COMPOSITION (BASED ON STOCKABLE AREA)

--------------------------------------------------------------------------------------------------------------------------

PERCENTILE POINTS IN THE

DISTRIBUTION OF STAND ATTRIBUTES BY DBH TOTAL/ACRE

STAND ----------------------------------------- OF STAND DISTRIBUTION OF STAND ATTRIBUTES BY

YEAR ATTRIBUTES 10 30 50 70 90 100 ATTRIBUTES SPECIES AND 3 USER-DEFINED SUBCLASSES

---- ----------- ------ ------ ------ ------ ------ ------ -------------- ------------------------------------------

(DBH IN INCHES)

1990 TREES .1 .1 3.2 6.2 9.4 12.7 745 TREES 35.% DF2, 22.% DF1, 20.% GF2, 10.% GF1

VOLUME:

PULPW 5.8 8.0 9.4 9.6 11.5 12.7 2267. CUFT 31.% DF1, 28.% LP1, 12.% GF1, 11.% LP2

SAWLG 8.0 9.4 9.6 10.0 11.5 12.7 1621. CUFT 36.% LP1, 23.% DF1, 14.% LP2, 10.% L1

SAWLG 8.0 9.4 9.6 10.0 11.5 12.7 6403. BDFT 35.% LP1, 22.% DF1, 14.% LP2, 12.% L1

ACCRETION 5.0 6.5 8.0 9.5 10.9 12.7 115. CUFT/YR 37.% DF1, 27.% GF1, 13.% LP1, 11.% L1

MORTALITY 5.0 8.2 9.4 9.6 10.9 12.7 24. CUFT/YR 37.% LP1, 23.% DF1, 14.% LP2, 11.% L1

2000 TREES .4 2.4 5.9 8.7 10.4 15.7 561. TREES 32.% DF2, 26.% DF1, 14.% GF2, 12.% GF1

VOLUME:

PULPW 7.2 9.2 10.0 11.0 13.3 15.7 3177. CUFT 34.% DF1, 22.% LP1, 18.% GF1, 10.% DF2

SAWLG 8.2 9.4 10.3 11.1 13.3 15.72 2664. CUFT 32.% DF1, 24.% LP1, 17.% GF1, 9.% LP2

SAWLG 8.5 9.4 10.3 11.2 13.3 15.7 10703. BDFT 29.% DF1, 26.% LP1, 17.% GF1, 10.% LP2

REMOVAL .3 .5 .5 2.4 4.9 10.0 261. TREES 65.% DF2, 31.% GF2, 4.% L2, 1.% LP2

VOLUME:

PULPW 4.1 4.9 9.4 9.4 10.0 10.0 203. CUFT 72.% DF2, 16.% L2, 12.% LP2, 0.% GF2

SAWLG 8.7 9.4 9.4 9.4 10.0 10.0 126. CUFT 60.% DF2, 22.% L2, 18.% LP2, 0.% ---

SAWLG 8.7 9.4 9.4 9.4 10.0 10.0 471. BDFT 57.% DF2, 23.% L2, 20.% LP2, 0.% ---

RESIDUAL 5.8 7.2 8.7 9.9 11.2 15.7 300. TREES 49.% DF1, 22.% GF1, 12.% LP1, 10.% L1

ACCRETION 6.8 8.5 9.4 10.7 13.3 15.7 128. CUFT/YR 39.% DF1, 37.% GF1, 10.% LP1, 6.% L1

MORTALITY 7.2 9.2 10.0 10.4 12.4 15.7 33. CUFT/YR 36.% LP1, 27.% DF1, 12.% L1, 12.% LP2

2010 TREES .3 7.0 9.3 10.7 12.8 20.2 341 TREES 47.% DF1, 26.% GF1, 9.% L1, 9.% LP1

VOLUME:

PULPW 8.6 10.6 11.4 12.8 15.3 20.2 3930. CUFT 38.% DF1, 26.% GF1, 18.% LP1, 7.% L1

SAWLG 9.2 10.6 11.6 13.1 15.3 20.2 3616. CUFT 36.% DF1, 26.% GF1, 18.% LP1, 7.% L1

SAWLG 9.4 10.7 11.7 13.1 15.5 20.2 15131. BDFT 34.% DF1, 27.% GF1, 19.% LP1, 8.% L1

ACCRETION 9.0 10.6 11.7 13.1 15.5 20.2 147. CUFT/YR 45.% GF1, 36.% DF1, 7.% LP1, 5.% L1

MORTALITY 8.5 9.9 10.9 11.9 14.0 20.2 44. CUFT/YR 31.% DF1, 29.% LP1, 16.% GF1, 11.% L1

*(The rest of the Stand Composition table and the Stand Attribute table are not listed.)*

SUMMARY STATISTICS (PER ACRE OR STAND BASED ON TOTAL STAND AREA)

-------------------------------------------------------------------------------------------------------------------------------

START OF SIMULATION PERIOD REMOVALS AFTER TREATMENT GROWTH THIS PERIOD

--------------------------------------------- ----------------------- --------------------- ------------------ MAI

NO OF TOP MERCH SAWLG SAWLG NO OF MERCH SAWLG SAWLG TOP RES PERIOD ACCRE MORT MERCH

YEAR AGE TREES BA SDI HT QMD CU FT CU FT BD FT TREES CU FT CU FT BD FT BA SDI CCF HT QMD YEARS PER YEAR CU FT

---- --- ----- --- ---- --- --- ---- ----- ----- ----- ----- ----- ----- ----- --- ---- --- --- ---- ------ ---- ----- -----

1990 30 677 102 241 128 65 5.3 2061 1473 5821 0 0 0 0 102 241 128 65 5.3 10 104 22 49.1

2000 40 510 132 281 161 72 6.9 2888 2422 9730 238 184 115 428 119 227 142 72 8.9 10 117 30 60.5

2010 50 310 144 272 163 74 9.2 3573 3288 13755 0 0 0 0 144 272 163 74 9.2 10 134 40 68.1

2020 60 310 165 303 178 80 9.9 4507 4226 18877 0 0 0 0 165 303 178 80 9.9 10 140 52 72.3

2030 70 233 120 303 186 86 11.9 5387 5162 24291 0 0 0 0 180 308 186 86 11.9 10 164 64 75.4

2040 80 234 194 327 192 92 12.3 6392 6174 30705 0 0 0 0 194 327 192 92 12.3 10 163 71 78.6

2050 90 174 204 321 196 100 14.6 7317 7102 36446 0 0 0 0 204 321 196 100 14.6 10 161 80 80.2

2060 100 167 210 326 196 106 15.2 8126 7914 41508 0 0 0 0 210 326 196 106 15.2 0 0 0 80.3

ACTIVITY SUMMARY

STAND ID= EXAMPLE1 MANAGEMENT ID= NONE Illustrate IF, THEN, and ENDIF

----------------------------------------------------------------------------------------------------------------------------------

CYCLE DATE EXTENSION KEYWORD DATE ACTIVITY DISPOSITION PARAMETERS:

----- ---- --------- -------- ---- -------------------- --------------------------------------------------------------------

1 1990

2 2000

BASE THINBTA 2000 DONE IN 2000 300.00 1.00 .00 999.00 .00 999.00

ESTAB TALLY 2009 DONE IN 2009 2000.00

3 2010

ESTAB TALLY 2019 DONE IN 2019 2000.00 2.00

4 2020

5 2030

6 2040

7 2050

----------------------------------------------------------------------------------------------------------------------------------

**APPENDIX B: EVENT MONITOR VARIABLES**

Variables that can be used within expressions are divided into four groups de­pending on when they are defined.

**Group 1: Always Defined**

AGE Age at beginning of a cycle

ASPECT Aspect in degrees from STDINFO keyword

BADBH Before-thin quadratic mean d.b.h.

BBA Before-thin basal area per acre

BBDFT Before-thin Scribner board foot volume

BCANCOV Before-thin percent canopy cover for the stand defined when the STRCLASS keyword is used

BCCF[[1]](#footnote-1) Before-thin crown competition factor

BCCFSP Before-thin crown competition by species. This “variable” is

actually a function (appendix C).

BMCUFT Before-thin merchantable cubic foot volume

BSCLASS Before-thin structural class code defined when the STRCLASS keyword is used

BSDI Before-thin stand density index

BSDIMAX Before-thin maximum stand density index

BSTRDBH Before-thin weighted average d.b.h. of the uppermost stratum defined when the STRCLASS keyword is used

BTCUFT Before-thin total cubic foot volume

BTOPHT Before-thin average top height

BTPA Before-thin trees per acre

CENDYEAR Ending year of a cycle (same as the beginning year of the follow-

­ing cycle, minus 1)

CYCLE Cycle number

DBHDIST Diameters at each of six nominal percentile points in the distri­bution of each of 11 different attributes. This “variable” is actu-

­ally a function (appendix C).

ELEV Elevation in feet from STDINFO keyword

EVPHASE 1.0 during the first call to the Event Monitor (before cutting,

see fig. 1) and 2.0 after cutting

HABTYPE Habitat type code from STDINFO keyword

INVYEAR The inventory year of the stand

LAT Latitude in degrees from STDINFO or LOCATE keyword

LONG Longitude in degrees from STDINFO keyword

NO The constant 0

NUMTREES Number of tree records stored by the model

RANN A uniform random number between 0 and 1

SAMPWT Sampling weight entered on the DESIGN keyword

SITE Stand site index entered on the SITECODE keyword

SLOPE Slope percent from STDINFO keyword

SMR Stand mistletoe rating computed when the variant you are using contains a mistletoe model

SPMCDBH Total trees per acre, basal area, cubic foot volume, board foot volume, mean diameter, average height, percent cover by species, average dwarf mistletoe rating, average diameter growth, or SDI for a specified tree value class, tree status, diameter range, and height range for live, recent mortality or harvested trees. This “variable” is actually a function (appendix C).

SUMSTAT Elements of the Summary Statistics table are available. This “variable” is actually a function (see appendix C).

UTMEW UTM easting coordinate from LOCATE keyword

UTMNAD UTM North American Datum number from LOCATE keyword

UTMNS UTM northing coordinate from LOCATE keyword

YEAR Beginning year of a cycle

YES The constant 1

**Group 2: Defined Only After Thinning Each Cycle**

AADBH After-thin quadratic mean d.b.h.

ABA After-thin basal area per acre

ABDFT After-thin Scribner board foot volume

ACANCOV After-thin percent canopy cover for the stand defined when the STRCLASS keyword is used

ACCF1 After-thin crown competition factor

ACCFSP After-thin crown competition by species. This “variable” is

actually a function (appendix C).

ATOPHT After-thin average top height

AMCUFT After-thin merchantable cubic foot volume

ASCLASS After-thin structural class code defined when the STRCLASS keyword is used

ASDI After-thin stand density index

ASDIMAX After-thin maximum stand density index

ASTRDBH After-thin weighted average d.b.h. of the uppermost stratum defined when the STRCLASS keyword is used

ATCUFT After-thin total cubic foot volume

ATPA After-thin trees per acre

CUT Set equal to 0.0 if no cutting occurred and equal to 1.0 if cutting

did occur

RBDFT Removed Scribner board foot volume

RMCUFT Removed merchantable cubic foot volume

RTCUFT Removed total cubic foot volume

RTPA Removed trees per acre

**Group 3: Defined When Cycle 2 Starts**

ACC Accretion from last cycle, cubic feet/acre/year

DBA Basal area per acre at the beginning of current cycle minus the basal area at the beginning of previous cycle

DBA% Basal area per acre at the beginning of current cycle divided by

the basal area at the beginning of previous cycle; then multiplied times 100

DCCF Crown competition factor at the beginning of current cycle minus the factor at the beginning of previous cycle

DCCF% Crown competition factor at the beginning of current cycle divided by the factor at the beginning of previous cycle; then multiplied times 100

DTPA Number of trees per acre at the beginning of current cycle minus

the number at the beginning of the previous cycle

DTPA% Trees per acre at the beginning of the current cycle divided by

the number at the beginning of the previous cycle; then multi­-

plied times 100

MAI Mean annual increment last cycle, cubic feet

MORT Mortality from last cycle, cubic feet/acre/year

PAI Periodic annual increment last cycle, cubic feet/acre

**Group 4: Defined by Extensions to the Prognosis Model**

BRCHWT The branch weighting factor for a given stand (defined by the

PPE)

BW%STND The stand defoliation level caused by the western spruce budworm during the previous cycle

DFTMPROB Probability of a Douglas-fir tussock moth outbreak in the cur­-

rent stand given that an outbreak is in the region

FIRE Value is Yes (1.0) when a fire was simulated, and No (0.0) otherwise.

MINSOIL Percent mineral soil exposed when a fire is simulated.

MPBPROB Probability of a mountain pine beetle outbreak in the current

stand given that an outbreak is in the region

MPBTPAK The number of trees per acre killed by the mountain pine beetle during the previous cycle

NODES The number of branch nodes that have been created for the current stand in a PPE run (Crookston and Stage 1989)

PPOTFLEN Potential flame length that can be expected given nominal prescribed burning conditions.

RDACCESS Equal to the road access value for this stand. This variable

is defined if the RDACCESS data are entered in the PPE

(see “Entering Spatial Data”, in Crookston and Stage 1989).

STANDWT The PPE stand weighting factor, see “Stand Weighting Factors”

(in Crookston and Stage 1989).

SELECTED Takes on the value 1.0 if the stand has been selected for harvest

by the PPE’s harvest simulation logic (Crookston and Stage

1989). The value is 0.0 if the stand has not been selected.

STARTYR The master starting year coded using the PPE STARTYR

keyword (Crookston and Stage 1989)

TM%DF The average tree defoliation on Douglas-fir

TM%GF The average tree defoliation on grand fir

TM%STND The stand average tree defoliation level caused by the Douglas-­

fir tussock moth during the previous cycle (Monserud and

Crookston 1982)

WPOTFLEN Potential flame length that can be expected given nominal wildfire conditions.

WSBWPROB Probability of a western spruce budworm outbreak in the

current stand given that an outbreak is in the region

**APPENDIX C: FUNCTIONS AND OPERATORS**

**Table C-l—**Functions and operators that can be used in expressions

**Operator Precedence1** **Description Example of usage**

Prognosis Model functions

ACCFSP 1st See description on page 19 ACCFSP(A)

BCCFSP 1st See description on page 19 BCCFSP(A)

BOUND 1st See description on page 19 BOUND(A,B,C)

COARSEWD 1st See description on page 19 COARSEWD(A,B)

DECADE 1st See description on page 19 DECADE(A,B,C)

DBHDIST 1st See description on page 20 DBHDIST(A,B)

LININT 1st See description on page 20 LININT(X,x1,x2,y1,y2)

MAXINDEX 1st See description on page 20 MAXINDEX(A,B,C,...)

MININDEX 1st See description on page 20 MININDEX(A,B,C,...)

NORMAL 1st See description on page 20 NORMAL(A,B)

SNAGS 1st See descpriton on page 21 SNAGS(A,B,C)

SPMCDBH 1st See description on page 21 SPMCDBH(A,B,C,...,H)

SUMSTAT 1st See description on page 22 SUMSTAT(A,B)

TIME 1st See description on page 22 TIME(A,B,C)

Other functions

ABS 1st Absolute value ABS(A)

ALOG 1st Natural logarithm (base *e*) ALOG(A)

ALOG10 1st Common logarithm (base 10) ALOG10(A)

EXP 1st *e* raised to power EXP(A)

FRAC 1st Truncate integer part2 FRAC(A/B)

INT 1st Truncate fractional part3 INT(A/B)

MAX 1st Maximum value of arguments MAX(A,B, . . .)

MIN 1st Minimum value of arguments MIN(A,B, . . .)

MOD 1st Modulus4 MOD(A,B)

SQRT 1st Square root SQRT(A)

Trigonometric functions (arguments in radians)

ARCCOS 1st Arc cosine ARCCOS(A)

ARCSIN 1st Arc sine ARCSIN(A)

ARCTAN 1st Arc tangent ARCTAN(A)

COS 1st Cosine COS(A)

SIN 1st Sine SIN(A)

TAN 1st Tangent TAN(A)

Arithmetic operators

\*\* 2nd Exponentiate A\*\*B

- 3rd Change sign -A

\* 4th Multiply A\*’B

/ 4th Divide A/B

+ 5th Add A+B

- 5th Subtract A-B

Logical operators

EQ 6th Equal A EQ B

NE 6th Not equal A NE B

LT 6th Less than A LE B

GT 6th Greater than A GT B

LE 6th Less than or equal A LE B

GE 6th Greater than or equal A GE B

NOT 7th Logical not NOT (A GT B)

AND 8th Logical and (A GT B) AND (A LT C)

OR 9th Logical or 5 (A GT B) OR (A LT C)

1Operators are executed in order of precedence within parenthetical groups. For example consider the following:

ALOG(A)\*\*2.+5/C, the log is taken first, the result is raised to the power of 2, then 5 is divided by C and added to the previ-

ous result.

2For example: FRAC(3.4) is equal to 0.4.

3For example: lNT(3.4) is equal to 3.0.

4Returns the remainder after the first argument is divided by the second. For example: MOD(7,2) is equal to 1 .O,

MOD(6.2) is equal to zero.

51nclusive OR.

**Prognosis Model Function Descriptions**

**ACCFSP** Returns the after-thin crown competition factor (**A**CCFSP), or the

**BCCFSP** before-thin crown competition factor (**B**CCFSP) for the species in­dicated as an argument to the function. Alpha or numeric species codes are used as the argument. If the species is represented by a numeric code, it is specific to the regional variant of the Prognosis Model you are using. For example, in the Inland Empire variant, species 7 is lodgepole pine. BCCFSP(7) is the before-thin crown competition factor for lodgepole in that variant.

**BOUND** Return the second argument if it is greater than the first argu-

­ment and less than the third. If the second argument is less than the first argument, the first argument is returned; and if the sec­-ond argument is greater than the third argument the third argu­ment is returned. If the first argument is greater than the third,

the function is undefined. Examples:

the value of BOUND(0.0,0.98,1.0) is 0.98;

the value of BOUND(0.0,1.9,1.0) is 1.0;

the value of BOUND(0.0,-28,1.0) is 0.0; and

the value of BOUND(0.0,0.98,-11) is undefined.

**COARSEWD** This function is available only when using the fire extension.

Returns the course woody debris in tons per acre. Only a portion

of the total debris is included as indicated by the lower (argument

1) and upper bounds (argument 2). That is, the function includes

all the kinds of woody debris within the range of lower to higher

bounds.

Argument 1 = The lower bound of the range of kinds of woody debris. The value must be between 1 and the value of argument 2.

Argument 2 = The lower bound of the range of kinds of woody debris. The value must be between argument 1 and 8.

Woody debis types:

1 = Greater than zero, less than or equal to .25 inches.

2 = Greater than .25, less than or equal to 1 inch.

3 = Greater than 1, less than or equal to 3 inches.

4 = Greater than 3, less than or equal to 6 inches.

5 = Greater than 6, less than or equal to 12 inches.

6 = Greater than 12 inches.

7 = Litter (leaf fall and small branches from tree crowns).

8 = Duff = decayed material from the other classes.

**DECADE** Returns the argument that corresponds to the decade the run is

in. For example, the value of DECADE(15,A/B,C\*\*2.1) will be

15 any time during the first decade of the run, A/B during the second, and C\*\*2.1 during the third and all subsequent decades. Decades are defined as offsets from the inventory year entered

on the INVYEAR keyword. If 1988 is the inventory year, the first decade of the run is years 1988 through 1997, the second is years 1998 through 2007, and so on.

**DBHDIST** Returns the diameter of the tree corresponding to the nominal percentile in the distribution of a specific attribute.

Argument 1 = attribute

Argument 2 = percentile in the distribution of the attribute

Table C-2 displays the coding scheme used to define arguments for the DHBDIST function. For example, DBHDIST(3,4) returns the

d.b.h. of the 70th percentile tree (because the second argument

is 4) in the distribution of trees per acre (because the first

argument is 3).

**Table C-2**—Coding scheme used in the DBHDIST function

**Second argument**

**First argument Percentile in distribu-**

**Code Attribute Code tion of the attribute**

1 Accretion (ft3/acre/year) 1 10-percentile

2 Mortality (ft3/acre/year) 2 30-percentile

3 Trees/acre 3 50-percentile

4 Total cubic volume/acre 4 70-percentile

5 Merchantable volume/acre 5 90-percentile

6 Board foot volume/acre 6 100-percentile

7 Removed trees/acre

8 Removed total cubic volume/acre 7 Total of the attri-

9 Removed merchantable volume/acre bute is returned

10 Removed board foot volume/acre rather than the d.b.h.

11 Residual trees/acre at a percentile

**LININT** Returns a linear interpolation between points on a simple Y-over-X graph. The general form is

LININT (**X**, x1, x2,..., xn, y1, y2,..., yn)

where (x1, y1),( x2, y2),...,( xn, yn) define points on the graph and **X** is some arbitrary value along the X-axis. The function returns the appropriate value along the Y-axis derived from a linear interpola­tion on the line defined by connecting the points of the graph. Note that x1 through xn must be in ascending sequence. If **X** is less than or equal to x1, then LININT returns the value of y1, and if **X** is greater than or equal to xn, LININT returns the value of yn.

At least 2 points must be provided, all arguments must be defined,

and the total number of arguments must be an odd number. If any of these conditions are violated, the result of LININT is undefined. The maximum number of allowable points depends on the specific use within an expression and may vary by computer installation.

In any case, up to 20 points should be permissible.

**MAXINDEX** Returns the argument number corresponding to the maximum or

**MININDEX** minimum argument value. Examples:

the value of MAXINDEX(0.0,5.2,-1.4) is 2;

the value of MININDEX(0.0,5.2,-1.4) is 3;

**NORMAL** Returns a random number from a Normal distribution with a specified mean and standard deviation.

Argument 1 = mean

Argument 2 = standard deviation

**SNAGS** This function is available only when using the fire extension.

Returns the volume or number of snags per acre for a given subset of the snag list. Arguments to the function are:

Argument 1 = Specify a 1 to get the number of snags per acre or a 2 to get the basal area per acre, or 3 to get the total cubic volume per acre.

Argument 2 = Specify the species index to limit the summation to only snags of the specified species. Code a zero for all species.

Argument 3 = Specify a 0 for both hard and soft snags, a 1 for just hard snags, or a 2 for just soft snags.

**SPMCDBH** Returns the trees, basal area, total cubic volume,merchantable cubic foot volume, total board foot vol­ume, quadratic mean diameter, average height, percent cover, average mistletoe rating, stand density index, or average diameter growth per acre for a given species, tree-value class, tree status, and range of di­ameter and height. The first three arguments are required.

Argument 1 **=** code indicating which measurement is desired, as follows:

1 = trees per acre,

2 = basal area per acre,

3 = total cubic volume/acre, or

4 = total board foot volume/acre

5 = quadratic mean diameter

6 = average height

7 = percent cover

8 = average dwarf mistletoe rating

9 = merchantable cubic foot volume/acre

10 = average diameter growth for the cycle

11 = stand density index

Argument 2 **=** alpha or numeric species code where 0 (or All) indicates that the sum over all species is desired. Numeric species codes are variant specific.

Argument 3 **=** tree-value class (IMC codes 1,2, or 3; see Wykoff and others 1982, p. 16) where 0 indicates that the sum over all tree-value classes is desired.

Arguments 4 and 5 **=** diameter range for trees included in the sum. The default values are 0.0 and 999.0.

Arguments 6 and 7 **=** height range for trees included in the sum. The default values are 0.0 and 999.0.

Argument 8 **=** tree status for trees included in the sum, where 0 indicates live trees, 1 indicates recent mortality trees, and 2 indicates harvested trees. The default value is 0.

Examples: SPMCDBH( 1,LP,0) returns the trees per acre that are lodgepole pine; SPMCDBH(2,0,3) returns the basal area/acre that is in IMC class 3; SPMCDBH(3,3,1,10) returns the total cubic volume/ acre that is Douglas-fir, IMC class 1, and in trees greater than 10 inches d.b.h.; SPMCDBH(3,3,1,10,20) is just like the previous example except that the trees must be greater than 10 inches and less than 20 inches d.b.h.; and SPMCDBH(5,0,0,10,999,40,999,1) returns the quadratic mean diameter of recent mortality trees which are at least 10 inches d.b.h. and at least 40 feet tall.

**SUMSTAT** Returns a value from the Summary Statistics Table.

Argument 1 = Summary Statistics Table row (which is the same as the cycle number)

Argument 2 = Summary Statistics Table column. Each column corresponds to a different stand attribute. The following codes are used to re­trieve attributes available using SUMSTAT:

1 = year 10 = removed merch bd ft volume

2 = age 11 = basal area/acre after thinnings

3 = trees/acre 12 = ccf after thinnings

4 = total ft3 volume 13 = top height

5 = merch ft3 volume 14 = period length (years)

6 = merch bd ft volume 15 = accretion (ft3/acre/year)

7 = removed trees/acre 16 = mortality (ft3/acre/year)

8 = removed total ft3 volume 17 = stand sampling weight.

9 = removed merch ft3 volume

If the row number references statistics that have not been com­puted, the value of SUMSTAT is undefined.

**TIME** Returns the first argument if the current year in the simulation

is less than the second argument. Returns the third argument if

the current year in the simulation is greater or equal to the second argument and less than the fourth, and so on.

For example, consider TIME (3.0,2010,A/B,2030,A\*C). For all

the years of the simulation prior to 2010, the value of TIME will

be 3.0.For the years 2010 to 2029, the value of time will be A/B.

For year greater or equal to 2030, the TIME’s value will be A\*C.

**APPENDIX D: KEYWORD SUMMARY**

The keywords described in this guide are summarized below. The numbers in parentheses refer to the page number(s) in the text where more information can

be found.

AGPLABEL Enter the policy labels for a specific activity group on supplemental

(8) data records that follow this keyword. Separate each label with one comma, do not exceed 100 characters, and use an ampersand (&) to continue on the next record.

ALSOTRY Signals that the activities that follow are an alternative group that

(9) are scheduled when the event happens.

field 1: A value that is multiplied by the branch weighting factor when the event occurs; default is 1.0. Applicable when

using the PPE.

COMPUTE Enter one or more expressions that define variables.

(5)

field 1: The date or cycle in which the expressions are to be evalu­-

ated; default is 1. Enter a 0.0 if you want the expression

to be evaluated every cycle.

Supplemental data record(s) contain expressions such as:

NORMAL = 25000\*(BADBH+1)\*\*(-1.588).

ENDIF Activities not included between an IF and an ENDIF are scheduled

(3) for the year indicated in field 1.

IF Signals that a logical expression follows on supplemental records.

(3)

field 1: The minimum waiting time before the event may happen again; default is zero years.

Supplemental data record(s): Enter a logical expression; use an ampersand (&) to indicate that an expression is continued on the next record. Do not exceed 200 characters per expression.

SPLABEL Enter the policy labels applicable to a specific stand on supplemen­-

(8) tal data records that follow this keyword. See AGPLABEL for a description of how to code the supplemental data record.

THEN Signals that activities will be scheduled following an event.

(3)

field 1: A value that is multiplied by the branch weighting factor when the event occurs; default is 1.0. Applicable only when using the PPE.

Crookston, Nicholas L. 1990. User’s guide to the event monitor: part of Prognosis Model version 6. Gen. Tech. Rep. INT-275. Ogden, UT: U.S. Department of Agriculture, Forest Service, Intermountain Research Station. 21 p.

Describes how to use the Event Monitor to dynamically invoke management activities

in the Prognosis Model for Stand Development. The program accepts statements of conditions--expressed as logical expressions of stand-state variables-to be met and

sets of activities to be simulated when the conditions are met. The combination of a condition and a set of activities is considered a rule of stand management. Several

rules may be used to define a stand management policies. Replaces General Technical Report INT-196 (Crookston 1985); retains most features of the Event Monitor, provides several new features.

KEYWORDS: expert systems, simulation, stand management

![](data:image/png;base64...)

**INTERMOUNTAIN**

**RESEARCH STATION**

The Intermountain Research Station provides scientific knowledge and technology to im­prove management, protection, and use of the forests and rangelands of the Intermountain

West. Research is designed to meet the needs of National Forest managers, Federal and State agencies, industry, academic institutions, public and private organizations, and indi­viduals. Results of research are made available through publications, symposia, workshops, training sessions, and personal contacts.

The Intermountain Research Station territory includes Montana, Idaho, Utah,

Nevada, and western Wyoming. Eighty-five percent of the lands in the Station area, about

231 million acres, are classified as forest or rangeland. They include grasslands, deserts,

shrublands, alpine areas, and forests. They provide fiber for forest industries, minerals and fossil fuels for energy and industrial development, water for domestic and industrial con­sumption, forage for livestock and wildlife, and recreation opportunities for millions of visitors.

Several Station units conduct research in additional western States, or have

missions that are national or international in scope.

Station laboratories are located in:

Boise, Idaho

Bozeman, Montana (in cooperation with Montana State University)

Logan, Utah (in cooperation with Utah State University)

Missoula, Montana (in cooperation with the University of Montana)

Moscow, Idaho (in cooperation with the University of Idaho)

Ogden, Utah

Provo, Utah (in cooperation with Brigham Young University)

Reno, Nevada (in cooperation with the University of Nevada)

USDA policy prohibits discrimination because of race, color, national origin, sex, age, reli­gion, or handicapping condition. Any person who believes he or she has been discriminated against in any USDA-related activity should immediately contact the Secretary of Agriculture,

Washington, DC 20250.

1. Several Event Monitor variables that measure species contribution to total CCF have been

   removed. The function BCCFSP (see appendix C) replaces BCCFn (where n is a species number

   1,2,. . ., 11), BCCFWP, BCCFL, BCCFDF, BCCFGF, BCCFWH, BCCFC, BCCFLP, BCCFS,

   BCCFAF, BCCFPP, and BCCFOTH. The function ACCFSP (see appendix C) replaces ACCFn

   (where n is a species number 1,2, . . ., 11), ACCFWP, ACCFL, ACCFDF, ACCFGF, ACCFWH,

   ACCFC, ACCFLP, ACCFS, ACCFAF, ACCFPP, and ACCFOTH. [↑](#footnote-ref-1)