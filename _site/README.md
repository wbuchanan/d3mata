# Mata Wrappers for D3js Library

[![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

Provides the `d3` class in Mata for constructing D3js graphs.  The library is a wrapper around the [D3js](http://www.d3js.org) library and generally has the same semantics as the original library with a few deviations (e.g., the object must first be initialized before any methods can be called, and some of the methods like `.svg` require empty parentheses with this library `.svg()` generate the appropriate syntax).  


## Extras
The class also includes an `.undo()` method which returns the object to its state prior to the last method that was called.
The `.cont()` method accepts a matrix of `d3()` class as its argument and appends each of the arguments to one another and places a terminating ';' after the last value in the matrix before returning the string containing the JavaScript code.  
The `.printer()` method also accepts a matrix of `d3()` class objects, but places a terminating ';' after each value in the matrix before appending all of the values into a single string object.   









