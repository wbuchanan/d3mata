mata: 

class d3locale { 

    private   	string  scalar    	locale
	private		string	scalar		varnm
    void                        	new(), destroy(), init()
    public   	string  scalar    	get(), getVarnm()
    public    	string  scalar    	complete() 
    void                        	numberFormat() 
    void                        	timeFormat() 
	void							timeFormat_utc()

}

string scalar d3locale::get() { 
    return(this.locale)
}


string scalar d3locale::getVarnm() { 
    return(this.varnm)
}


string scalar d3locale::complete() { 
    string scalar localeObject 
    localeObject = this.get() + ";"
    return(localeObject)
}

void d3locale::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.locale = "var " + vnm + " = " + arguments
	}
	else {
		this.locale = vnm
	}
	this.varnm = vnm
}

void d3locale::new() {
}

void d3locale::destroy() {
}

void d3locale::numberFormat(string scalar specifier) { 
	this.locale = this.get() + ".numberFormat(" + specifier + ")"
}

void d3locale::timeFormat(string scalar specifier) { 
	this.locale = this.get() + ".timeFormat(" + specifier + ")"
}

void d3locale::timeFormat_utc(string scalar specifier) { 
	this.locale = this.get() + ".timeFormat.utc(" + specifier + ")"
}

end


