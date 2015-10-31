import delimited using d3Data.csv, delim(",") clear varn(1)

drop if class == "d3"

qui: levelsof class, loc(clss) 
file open x using maked3.do, w replace
file write x "// Clear mata memory " _n
file write x "mata: mata clear " _n(2)

foreach v of loc clss {

	file write x "// Creates the class `v' and associated methods from D3js API" _n
	file write x "do `v'.mata" _n(2)

	file open c using `v'.mata, w replace
	
	file write c "mata: " _n(2)
	
	file write c "class d3`v' extends d3 { " _n(2)
	
	file write c "    private   string  scalar    `v'" _n 
	
	file write c "    void                        new(), destroy()" _n 
	
	file write c "    private   string  scalar    get()" _n
	
	file write c "    public    string  scalar    setVarnm(), end() " _n 
	
	qui: levelsof subclass if class == `"`v'"', loc(methods)
	
	foreach j of loc methods {
	
		if "`j'" == "matrix" {
		
			loc j mtrx
			
		}
	
		if "`j'" != "get" {
			file write c "    string            scalar    `j'() " _n
		}
	} 
	
	file write c "" _n
	file write c "}" _n(2)
	
	file write c "string scalar d3`v'::get() { " _n
	file write c "    return(this.`v')" _n
	file write c "}" _n(2)
	
	file write c "string scalar d3`v'::end() { " _n
	file write c "    string scalar `v'Object " _n
	file write c `"    `v'Object = this.get() + ";""' _n
	file write c "    return(`v'Object)" _n
	file write c "}" _n(2)
	
	file write c "string scalar d3`v'::setVarnm(string scalar vnm) { " _n
	file write c "    string scalar jsvarname" _n
	file write c `"    jsvarname = "var " + vnm + " = " + "`v'""' _n
	file write c "    return(jsvarname)" _n
	file write c "}" _n(2)
	
	file write c "void d3`v'::new() {" _n
//	file write c `"    this.`v' = "var " + varnm + " = `v'""' _n
	file write c `"    this.`v' = this.setVarnm(ST`v')"' _n
	file write c "}" _n(2)
	
	
	foreach j of loc methods {
	
		if "`j'" == "matrix" {
		
			loc j mtrx
			
		}
	
		file write c "string scalar d3`v'::`j'(string scalar x) { " _n
		file write c "    string scalar `v' " _n
		file write c `"    this.`v' = this.get() + ".`j'(" + x + ")""' _n
		file write c "    return(`v')" _n
		file write c "}" _n(2)
		
	}
	
	file write c "end" _n(3)
	
	file close c
	
}

file write x "// Creates the D3 class object" _n
file write x "do d3.mata" _n(3)
file close x 

