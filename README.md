# Algorithmic Truth Table Method (ATTM)

[ ... _**still under construction**_ ...]  

Files related to the use of an Algorithmic Truth Table Method (ATTM) for proving the validity/invalidity of certain argument forms (singly-quantified and monadic).  In particular, the ATTM can be used for evaluating the validity of each of the 256 possible forms of a categorical syllogism (CS).

The method was previously presented in the following scientific meetings:

* Second Lecture Series for SY 2003-2004 of the Mathematical Society of the Philippines – National Capital Region Chapter (November 22, 2003). Seminar Room, Mapua Institute of Technology, Intramuros, Manila.
* 2003 Science and Technology Research Colloquium (November 19, 2003). Thomas Aquinas Research Complex, University of Santo Tomas, Manila, Philippines.

## Useful Wikipedia articles
* [List of valid argument forms](https://en.wikipedia.org/wiki/List_of_valid_argument_forms)
* [Syllogism](https://en.wikipedia.org/wiki/Syllogism)

## Color coding 
In the PDF file [256-tables.pdf](./256-tables.pdf), the table labels indicating the CS form, e.g., `Form: I-AAI`, for the first table, have been highlighted to indicate whether the form is valid/invalid (Aristotelian logic), or unconditionally/conditionally valid or invalid (Boolean logic). The color coding is as follows:

* <span style="background-color:#B8860B; fontcolor:black">dark goldenrod</span> -  indicates a valid CS in Aristotelian (with either a **loose** or an **express** definition of a CS) and an unconditionally valid CS in Boolean logic (there are **15** such truth tables)
* <span style="background-color:#DAA520; fontcolor:black">goldenrod</span> -  indicates a valid CS in Aristotelian logic and a conditionally valid CS in Boolean logic (there are **4** such truth tables)
* <span style="background-color:silver; fontcolor:black">silver</span> -  indicates a valid CS in Aristotelian logic with an **loose** definition of a CS, an invalid CS in Aristotelian logic with an **express** definition of a CS, and a conditionally valid CS in Boolean logic (there are **5** such truth tables).  The conclusion for each of this five CS is a weakened version of the conclusion of the corresponding CS in the first list of 15 CS.
* <span style="background-color:white; fontcolor:black">white</span> - invalid CS

Thus, in 

* **Aristotelian logic with an _express_ definition of a CS**, exactly **19** (<span style="background-color:#B8860B; fontcolor:black">15 dark goldenrod</span> + <span style="background-color:#DAA520; fontcolor:black">4 goldenrod</span>) CS are deemed to be valid; 
* **Aristotelian logic with a _loose_ definition of a CS**, exactly **24** (<span style="background-color:#B8860B; fontcolor:black">15 dark goldenrod</span> + <span style="background-color:#DAA520; fontcolor:black">4 goldenrod</span> + <span style="background-color:silver; fontcolor:black">5 silver</span>) CS are deemed to be valid; 
* **Boolean logic** - exactly **15** (<span style="background-color:#B8860B; fontcolor:black">only the 15 dark goldenrod</span>) CS are deemed to be unconditionally valid and **9** (<span style="background-color:#DAA520; fontcolor:black">4 goldenrod</span> + <span style="background-color:silver; fontcolor:black">5 silver</span>) CS are deemed conditionally valid subject to certain requirements on existential import (please see [List of valid argument forms](https://en.wikipedia.org/wiki/List_of_valid_argument_forms) for more information).

## LICENSE

This work ([syllogisms](https://github.com/justineuro/syllogisms)) is covered by an Apache 2.0 License.

