mata: 

class d3nest { 
	private:
	string				scalar	nest
	
	public:
	void						new(), destroy(), init(), entries(), key(), 
								map(), rollup(), sortKeys(), sortValues()
	string				scalar	get(), complete()
}

string scalar d3nest::get() { 
    return(this.nest)
}

string scalar d3nest::complete() { 
    string scalar nestObject 
    nestObject = this.get() + ";"
    return(nestObject)
}

void d3nest::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.nest = "var " + vnm + " = " + arguments
	}
	else {
		this.nest = vnm
	}
}

void d3nest::new() {
}

void d3nest::destroy() {
}

void d3nest::key(string scalar func) { 
	this.nest = this.get() + ".key(" + func + ")"
}


void d3nest::sortKeys(string scalar comparator) { 
	this.nest = this.get() + ".sortKeys(" + comparator + ")"
}


void d3nest::sortValues(string scalar comparator) { 
	this.nest = this.get() + ".sortValues(" + comparator + ")"
}


void d3nest::rollup(string scalar func) { 
	this.nest = this.get() + ".rollup(" + func + ")"
}


void d3nest::map(string scalar aray, | string scalar mapType) { 
	if (mapType != "") {
		this.nest = this.get() + ".map(" + aray + ", " + mapType + ")"
	}
	else {
		this.nest = this.get() + ".map(" + aray + ")"
	}
}


void d3nest::entries(string scalar aray) { 
	this.nest = this.get() + ".entries(" + aray + ")"
}



end


