mata: 

class d3tsv { 

    private   string  scalar    tsv
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete()
	void						parse()
	void						parseRows()
	void						format()
	void						formatRows()
	
}


string scalar d3tsv::get() { 
    return(this.tsv)
}


string scalar d3tsv::complete() { 
    string scalar tsvObject 
    tsvObject = this.get() + ";"
    return(tsvObject)
}


void d3tsv::init(string scalar vnm, string scalar arguments) { 
	this.tsv = "var " + vnm + " = " + arguments
}


void d3tsv::new() {
}


void d3tsv::destroy() {
}


void d3tsv::parse(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.tsv = this.get() + ".parse(" + strng + ", " + accessor + ")"
	}
	else {
		this.tsv = this.get() + ".parse(" + strng + ")"
	}
}


void d3tsv::parseRows(string scalar strng, | string scalar accessor) {
	if (accessor != "") {
		this.tsv = this.get() + ".parseRows(" + strng + ", " + accessor + ")"
	}
	else {
		this.tsv = this.get() + ".parseRows(" + strng + ")"
	}
}


void d3tsv::format(string scalar rows) {
	this.tsv = this.get() + ".format(" + rows + ")"
}


void d3tsv::formatRows(string scalar rows) {
	this.tsv = this.get() + ".formatRows(" + rows + ")"
}



end


