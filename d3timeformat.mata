mata: 

class d3timeformat { 
	private:
	string				scalar	timeformat
	
	public:
	void						new(), destroy(), init(), format(), parse(),
								multi(), utc(), iso()
	string				scalar	get(), complete()
}

string scalar d3timeformat::get() { 
    return(this.timeformat)
}

string scalar d3timeformat::complete() { 
    string scalar timeformatObject 
    timeformatObject = this.get() + ";"
    return(timeformatObject)
}

void d3timeformat::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.timeformat = "var " + vnm + " = " + arguments
	}
	else {
		this.timeformat = vnm
	}	
}

void d3timeformat::new() {
}


void d3timeformat::destroy() {
}


void d3timeformat::format(string scalar date) {
	this.timeformat = this.get() + ".format(" + date + ")" 
}


void d3timeformat::iso() {
	this.timeformat = this.get() + ".iso" 
}


void d3timeformat::parse(string scalar strng) {
	this.timeformat = this.get() + ".parse(" + strng + ")" 
}


void d3timeformat::multi(string scalar formats) {
	this.timeformat = this.get() + ".multi(" + formats + ")" 
}


void d3timeformat::utc(string scalar specifier) {
	this.timeformat = this.get() + ".utc(" + specifier + ")" 
}


end


