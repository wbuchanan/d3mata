{smcl}
{* *! version 0.0.0  31DEC2015}{...}
{cmd:help libd3}
{hline}

{title:Title}

{hi:libd3 {hline 2}} A utility program to compile the libd3 Mata library.

{title:Syntax}

{p 4 4 4}{cmd:libd3} [, {cmdab:rep:lace} {cmdab:lib:rary} {cmdab:mos:ave}
{cmd:dir(}{it:passthru}{opt )} {cmd:size(}{it:passthru}{opt )} {cmdab:c:omplete} ] {break}

{title:Description}

{p 4 4 4}{cmd:libd3} is a Mata wrapper around the {browse "http://www.d3js.org":D3} 
JavaScript library.  This program provides a convenience command to compile the 
Mata classes/methods into a Mata library file locally.  Additionally, there are 
options provided to compile the classes and save them into compiled object files 
(see {help mata mosave} for additional information).  When called without 
arguments the classes will be compiled for the Stata session, but will not 
persist without the {cmdab:mos:ave} or {cmdab:lib:rary} options. For additional 
information about this package visit the project repository 
{browse "http://github.com/wbuchanan/d3mata"}.{p_end}

{title:Options}
{p 4 4 8}{cmdab:rep:lace} option specifies that any existing instances of the 
class definitions should first be dropped before recompiling.  This option also 
causes the program to overwrite previously save object or library files. {p_end}

{p 4 4 8}{cmdab:lib:rary} an option used to create a .mlib file containing all 
of the compiled classes and methods.  For additional information about .mlib files 
see {help mata mlib}.{p_end}

{p 4 4 8}{cmdab:mos:ave} an option used to save each compiled Mata class in its 
own object file.  See {help mata mosave} for additional information. {p_end}

{p 4 4 8}{cmd:dir} is an option passed directly to either the {help mata mosave} 
or {help mata mlib} commands based on either the {cmdab:mos:ave} or {cmdab:lib:rary} 
options being specified. {p_end}

{p 4 4 8}{cmd:size} is an option that only affects the creation of a .mlib file.  
If no value is specified, the program defaults to the maximum allowable value (2048). {p_end}

{p 4 4 8}{cmdab:c:omplete} is an option used in conjunction with the {cmdab:mos:ave} or 
{cmdab:lib:rary} options and throws an error if the class definition is incomplete. 
{it:This option can be helpful to ensure the classes compile correctly on your 
system before submitting an issue to the github repository}.{p_end}

{title:Integration with other packages}
{p 2 2 4}{hi:{ul:jsonio}}{p_end}
{p 4 4 8}The {browse "http://wbuchanan/github.io/StataJSON":jsonio} package was 
developed with features specifically to make it easier to use the metadata features 
of Stata to generate data visualizations that include these data.  For example, 
to access value labels for a variable you can use the {hi:d3.json()} function to 
load a JSON file created by {browse "http://wbuchanan/github.io/StataJSON":jsonio} 
and can access the values like: {p_end}

{p 8 8 8}d3.json("filepath/file.json", function(error, json) {{p_end}
{p 12 12 8}if (error) return console.warn(error);{p_end}
{p 12 12 8}var data = json.data.values,{p_end}
{p 12 12 8}varlabels = json["variable labels"],{p_end}
{p 12 12 8}valueLabels = json["value labels"],{p_end}
{p 12 12 8}varnames = json["variable names"];{p_end}
{p 12 12 8}svg.text(function(d) { return valueLabels["varname"][d];});{p_end}
{p 8 8 8}}{p_end}

{p 4 4 8}In this case, "varname" is a place holder for the variable name that 
has labeled values.  This function then returns the value label associated with 
the individual value for that variable.  For variable labels, you can just pass 
the name of the variable to the varlabels array like: varlabels["varname"].  {p_end}

{p 2 2 4}{hi:{ul:libhtml}}{p_end}
{p 4 4 8}A central part of using this class in a standalone manner is how the d3 
class integrates with the {browse "http://github.com/wbuchanan/matahtml":libhtml} 
package.  The {browse "http://github.com/wbuchanan/matahtml":libhtml} package 
provides Mata classes representing HTML5 DOM elements.  You can use the 
{hi:.printer()} method of the d3 class to print all of your d3 objects inside of 
a <script></script> HTML tag by calling the {hi:.setClassArgs()} method of the 
script class and passing the {hi:d3.printer()} method to it to output your JavaScript 
code between the script tags.  {p_end}

{title:Additional information}
{p 4 4 8}For additional information on how to use this program, visit the 
{browse "http://github.com/wbuchanan/d3mata-examples":d3mata-examples} repository.  
This repository will be used to store Mata functions that make it easier to 
create reusable code for generating D3js-based data visualizations.{p_end}

{title: Author}{break}
{p 1 1 1} William R. Buchanan, Ph.D. {break}
Data Scientist {break}
{browse "http://mpls.k12.mn.us":Minneapolis Public Schools} {break}
William.Buchanan at mpls [dot] k12 [dot] mn [dot] us

