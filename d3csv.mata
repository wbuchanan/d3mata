mata: 

class d3csv { 

    private   string  scalar    csv
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete()
	void						parse()
	void						parseRows()
	void						format()
	void						formatRows()
	
}

string scalar d3csv::get() { 
    return(this.csv)
}

string scalar d3csv::complete() { 
    string scalar csvObject 
    csvObject = this.get() + ";"
    return(csvObject)
}

void d3csv::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.csv = "var " + vnm + " = " + arguments
	}
	else {
		this.csv = vnm
	}	
}

void d3csv::new() {
}

void d3csv::destroy() {
}

void d3csv::parse(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.csv = this.get() + ".parse(" + strng + ", " + accessor + ")"
	}
	else {
		this.csv = this.get() + ".parse(" + strng + ")"
	}
}

void d3csv::parseRows(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.csv = this.get() + ".parseRows(" + strng + ", " + accessor + ")"
	}
	else {
		this.csv = this.get() + ".parseRows(" + strng + ")"
	}
}

void d3csv::format(string scalar rows) {
	this.csv = this.get() + ".format(" + rows + ")"
}

void d3csv::formatRows(string scalar rows) {
	this.csv = this.get() + ".formatRows(" + rows + ")"
}



end


