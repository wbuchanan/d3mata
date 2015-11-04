mata: 

class d3timeformat { 

    private   string  scalar    timeformat
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						format()
	void						parse()
	void						multi()
	void						utc()
	void						iso()

}

string scalar d3timeformat::get() { 
    return(this.timeformat)
}

string scalar d3timeformat::complete() { 
    string scalar timeformatObject 
    timeformatObject = this.get() + ";"
    return(timeformatObject)
}

void d3timeformat::init(string scalar vnm, string scalar arguments) { 
	this.timeformat = "var " + vnm + " = " + arguments 
}

void d3timeformat::new() {
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


