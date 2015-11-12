{smcl}
{* *! version 0.0.0  12NOV2015}{...}
{cmd:help buildd3}
{hline}

{title:Title}

{hi:buildd3 {hline 2}} Stata program to build the libd3 Mata library.  The libd3 
Mata library is a wrapper around the {browse "http://www.d3js.org":D3.js} JavaScript 
library.  The library also compiles an additional set of helper classes/methods 
to construct the HTML header, provide methods to insert addition references to 
other scripts/sources, etc... {p_end}   

{title:Syntax}

{p 4 4 4}{cmd:buildd3} {it:D3 Class(es) or all} [, {cmdab:di:splay} 
{cmdab:ml:ib}{cmdab:mos:ave}{cmd:dir(}{it:string}{opt )} {cmdab:rep:lace}
{cmd:size(}{it:integer}{opt )}] {break}

{title:Description}
{p 4 4 4}{cmd:buildd3} is used to compile the libd3 Mata library locally and 
contains options to build the Mata library file, or to save object code for 
individual classes.  {p_end}

{marker required}{title: Required Arguments}
{p 4 4 8}{cmd:buildd3} you can pass "all" to the first parameter of the program 
to build a single d3 class object containing all of the methods in the library or 
can pass one or more of: {hi:"behavior"}, {hi:"core"}, {hi:"geo"}, {hi:"geom"}, 
{hi:"layout"}, {hi:"scales"}, {hi:"svg"}, or {hi:"time"} to build the individual 
class objects.  These individual classes are organized based on the 
{browse "http://github.com/mbostock/d3/wiki/API-Reference":D3 API Reference}.  
Although method chaining is not currently supported, all possible efforts have 
been made to mirror the API as closely as possible.{p_end}

{marker optional}{title: Optional Arguments}
{p 4 4 8}{cmdab:di:splay} prints a status message to the console to let you know 
which classes have been compiled. {p_end}

{p 4 4 8}{cmdab:ml:ib} is an option used to build the libd3.mlib file from either 
the single class/header class objects or from the individual class objects 
passed to the program by the user.  {p_end}

{p 4 4 8}{cmdab:mos:ave} is an option used to store individual object files for 
each of the classes.  {p_end}

{p 4 4 8}{cmd:dir} is an option used to specify the location where the object 
and/or library files will be saved.  {p_end}

{p 4 4 8}{cmdab:rep:lace} used to replace the existing object and/or library 
files.  {p_end}

{p 4 4 8}{cmd:size} used to set the size of the mata library.  The maximum value 
2048 is set as the default, but you may want to use less memory for the library 
(this is not tested).  {p_end}

{marker references}{title:References}{break}
{p 4 4 4}{browse "http://github.com/mbostock/d3/wiki/API-Reference":D3 API Reference}{p_end}
{p 4 4 4}{browse "http://github.com/mbostock/d3/wiki/Gallery":D3 Example Gallery}{p_end}
{p 4 4 4}{browse "http://github.com/mbostock/d3/wiki/Tutorials":D3 Tutorials}{p_end}
{p 4 4 4}{browse "http://github.com/mbostock/d3/wiki":D3 Wiki}{p_end}
 
{title: Author}{break}
{p 1 1 1} William R. Buchanan, Ph.D. {break}
Data Scientist {break}
{browse "http://mpls.k12.mn.us":Minneapolis Public Schools} {break}
William.Buchanan at mpls [dot] k12 [dot] mn [dot] us
