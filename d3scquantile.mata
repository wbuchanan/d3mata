mata: 

class d3quantile { 
    private   string  scalar    quantile
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						quantile()
    void                        copy() 
    void                        domain() 
    void                        invertExtent() 
    void                        quantiles() 
    void                        range() 
}

string scalar d3quantile::get() { 
    return(this.quantile)
}


string scalar d3quantile::complete() { 
    string scalar quantileObject 
    quantileObject = this.get() + ";"
    return(quantileObject)
}


void d3quantile::init(string scalar vnm, string scalar arguments) { 
	this.quantile = "var " + vnm + " = " + "quantile()"
}


void d3quantile::new() {
}


void d3quantile::destroy(){
}


void d3quantile::quantile(string scalar x) { 
	this.quantile = this.get() + ".quantile(" + x + ")"
}


void d3quantile::copy() { 
	this.quantile = this.get() + ".copy()"
}


void d3quantile::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.quantile = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.quantile = this.get() + ".domain()"
	}
}


void d3quantile::invertExtent(string scalar y) { 
	this.quantile = this.get() + ".invertExtent(" + y + ")"
}


void d3quantile::quantiles() { 
	this.quantile = this.get() + ".quantiles()"
}

void d3quantile::range(| string scalar values) { 
	if (values != "") {
		this.quantile = this.get() + ".range(" + values + ")"
	}
	else {
		this.quantile = this.get() + ".range()"
	}
}


end


