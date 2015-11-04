mata: 

class d3interval { 

    private   string  scalar    interval
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        ceil() 
    void                        floor() 
    void                        offset() 
    void                        range() 
    void                        round() 
    void                        utc() 

}

string scalar d3interval::get() { 
    return(this.interval)
}

string scalar d3interval::complete() { 
    string scalar intervalObject 
    intervalObject = this.get() + ";"
    return(intervalObject)
}

void d3interval::init(string scalar vnm) { 
	this.interval = "var " + vnm + " = " + "interval()"
}

void d3interval::new() {
}

void d3interval::ceil(string scalar x) { 
	this.interval = this.get() + ".ceil(" + x + ")"
}

void d3interval::floor(string scalar x) { 
	this.interval = this.get() + ".floor(" + x + ")"
}

void d3interval::offset(string scalar x) { 
	this.interval = this.get() + ".offset(" + x + ")"
}

void d3interval::range(string scalar x) { 
	this.interval = this.get() + ".range(" + x + ")"
}

void d3interval::round(string scalar x) { 
	this.interval = this.get() + ".round(" + x + ")"
}

void d3interval::utc(string scalar x) { 
	this.interval = this.get() + ".utc(" + x + ")"
}

end


