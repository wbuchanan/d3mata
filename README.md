# Mata Wrappers for D3js Library
Provides Mata classes and methods that construct strings containing syntax equivalent to writing the javascript.  The purpose is to mirror the semantics and flow of the D3js library as closely as possible so others who may have existing graphics that use D3js could more easily rebuild them using the Mata library.  

## Important things to note

### Writing the JavaScript to a File
The d3header object prefills an HTML header and provides methods to inject additional libraries, scripts, and/or other content into the header of the file. 

### Getting the constructed string
Each class has a .complete() method that returns a string scalar.  This method also adds the terminating semicolon to a javascript command.  Once the user builds the desired syntax using Object.complete() as the second argument to d3doc::addD3Element() to print the syntax to the file.  

### Most importantly
This is extremely early and is very much a work in progress.  All of the classes were able to compile as of 04nov2015, but there is still a non-trivial amount of work remaining to make sure the library functions as expected.  Any collaborators are more than welcome to join in.







