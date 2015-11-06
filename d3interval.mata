mata: 

class d3interval { 
	private:
	string				scalar	interval
	
	public:
	void						new(), destroy(), init(), ceil(), floor(),
								offset(), range(), round(), utc()
	string				scalar	get(), complete()
}

string scalar d3interval::get() { 
    return(this.interval)
}

string scalar d3interval::complete() { 
    string scalar intervalObject 
    intervalObject = this.get() + ";"
    return(intervalObject)
}

void d3interval::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.interval = "var " + vnm + " = " + arguments
	}
	else {
		this.interval = vnm
	}	
}

void d3interval::new() {
}

void d3interval::destroy() {
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


