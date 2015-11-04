mata: 

class d3csv { 

    private   string  scalar    csv
    void                        new(), destroy(), init()
    private   string  scalar    get()
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

void d3csv::init(string scalar vnm, string scalar arguments) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + arguments
    return(jsvarname)
}



void d3csv::new() {
}

void d3csv::parse(string scalar strng, | string scalar accessor) {
		string scalar CsvParse
		if (accessor != "") {
			CsvParse = this.get() + ".parse(" + strng + ", " + accessor + ")"
		}
		else {
			CsvParse = this.get() + ".parse(" + strng + ")"
		}
		this.csv = CsvParse
}

void d3csv::parseRows(string scalar strng, | string scalar accessor) {
		string scalar CsvParseRows
		if (accessor != "") {
			CsvParseRows = this.get() + ".parseRows(" + strng + ", " + accessor + ")"
		}
		else {
			CsvParseRows = this.get() + ".parseRows(" + strng + ")"
		}
		this.csv = CsvParseRows
}

void d3csv::format(string scalar rows) {
		string scalar CsvFormat
		CsvFormat = this.get() + ".format(" + rows + ")"
		this.csv = CsvFormat
}

void d3csv::formatRows(string scalar rows) {
		string scalar CsvFormatRows
		CsvFormatRows = this.get() + ".formatRows(" + rows + ")"
		this.csv = CsvFormatRows
}



end


