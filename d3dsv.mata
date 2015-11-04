mata: 

class d3dsv { 

    private   string  scalar    dsv
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete()
	void						dsv()
	void						parse()
	void						parseRows()
	void						format()
	void						formatRows()
	
}


string scalar d3dsv::get() { 
    return(this.dsv)
}


string scalar d3dsv::complete() { 
    string scalar dsvObject 
    dsvObject = this.get() + ";"
    return(dsvObject)
}


void d3dsv::init(string scalar vnm, string scalar arguments) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + arguments
    return(jsvarname)
}


void d3dsv::new() {
}


void d3dsv::dsv(string scalar url, | string scalar accessor, string scalar callback) {
	string scalar Dsv
	if (accessor != "" & callback != "") {
		Dsv = this.get() + ".dsv(" + url + ", " + accessor + ", " + callback + ")"
	}
	else if (accessor != "" & callback == "") {
		Dsv = this.get() + ".dsv(" + url + ", " + accessor + ")"
	}
	else {
		Dsv = this.get() + ".dsv(" + url + ")"
	}
	this.dsv = Dsv
}



void d3dsv::parse(string scalar strng, | string scalar accessor) {
		string scalar dsvParse
		if (accessor != "") {
			dsvParse = this.get() + ".parse(" + strng + ", " + accessor + ")"
		}
		else {
			dsvParse = this.get() + ".parse(" + strng + ")"
		}
		this.dsv = dsvParse
}


void d3dsv::parseRows(string scalar strng, | string scalar accessor) {
		string scalar dsvParseRows
		if (accessor != "") {
			dsvParseRows = this.get() + ".parseRows(" + strng + ", " + accessor + ")"
		}
		else {
			dsvParseRows = this.get() + ".parseRows(" + strng + ")"
		}
		this.dsv = dsvParseRows
}


void d3dsv::format(string scalar rows) {
		string scalar dsvFormat
		dsvFormat = this.get() + ".format(" + rows + ")"
		this.dsv = dsvFormat
}


void d3dsv::formatRows(string scalar rows) {
		string scalar dsvFormatRows
		dsvFormatRows = this.get() + ".formatRows(" + rows + ")"
		this.dsv = dsvFormatRows
}



end


