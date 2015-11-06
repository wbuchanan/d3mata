mata: 

class d3dsv { 
	private:
	string				scalar	dsv
	
	public:
	void						new(), destroy(), init(), dsv(), parse(),
								parseRows(), format(), formatRows()
	string				scalar	get(), complete()
}


string scalar d3dsv::get() { 
    return(this.dsv)
}


string scalar d3dsv::complete() { 
    string scalar dsvObject 
    dsvObject = this.get() + ";"
    return(dsvObject)
}


void d3dsv::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.dsv = "var " + vnm + " = " + arguments
	}
	else {
		this.dsv = vnm
	}	
}

void d3dsv::new() {
}

void d3dsv::destroy() {
}

void d3dsv::dsv(string scalar url, | string scalar accessor, string scalar callback) {
	if (accessor != "" & callback != "") {
		this.dsv = this.get() + ".dsv(" + url + ", " + accessor + ", " + callback + ")"
	}
	else if (accessor != "" & callback == "") {
		this.dsv = this.get() + ".dsv(" + url + ", " + accessor + ")"
	}
	else {
		this.dsv = this.get() + ".dsv(" + url + ")"
	}
}



void d3dsv::parse(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.dsv = this.get() + ".parse(" + strng + ", " + accessor + ")"
	}
	else {
		this.dsv = this.get() + ".parse(" + strng + ")"
	}
}


void d3dsv::parseRows(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.dsv = this.get() + ".parseRows(" + strng + ", " + accessor + ")"
	}
	else {
		this.dsv = this.get() + ".parseRows(" + strng + ")"
	}
}


void d3dsv::format(string scalar rows) {
	this.dsv = this.get() + ".format(" + rows + ")"
}


void d3dsv::formatRows(string scalar rows) {
	this.dsv = this.get() + ".formatRows(" + rows + ")"
}



end


