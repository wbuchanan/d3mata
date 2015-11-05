mata: 

class d3svgsymbol { 

    private   string  scalar    symbol
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        symbol() 
    void                        size() 
    void                        type() 

}

string scalar d3svgsymbol::get() { 
    return(this.symbol)
}

string scalar d3svgsymbol::complete() { 
    string scalar symbolObject 
    symbolObject = this.get() + ";"
    return(symbolObject)
}

void d3svgsymbol::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.symbol = "var " + vnm + " = " + arguments
	}
	else {
		this.symbol = vnm
	}	
}

void d3svgsymbol::new() {
}

void d3svgsymbol::destroy() {
}


void d3svgsymbol::symbol(string scalar datum, | string scalar index) {
	if (index != "") {
		this.symbol = this.get() + ".symbol(" + datum + ", " + index + ")"
	}
	else {
		this.symbol = this.get() + ".symbol(" + datum + ")"
	}
}

void d3svgsymbol::size(| string scalar size) { 
    this.symbol = this.get() + ".size(" + size + ")"
}

void d3svgsymbol::type(| string scalar type) { 
    this.symbol = this.get() + ".type(" + type + ")"
}

end


