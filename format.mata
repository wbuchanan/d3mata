mata: 

class d3format extends d3 { 

    private   string  scalar    format
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    parse() 

}

string scalar d3format::get() { 
    return(this.format)
}

string scalar d3format::end() { 
    string scalar formatObject 
    formatObject = this.get() + ";"
    return(formatObject)
}

string scalar d3format::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "format"
    return(jsvarname)
}

void d3format::new() {
    this.format = this.setVarnm(STformat)
}

string scalar d3format::parse(string scalar x) { 
    string scalar format 
    this.format = this.get() + ".parse(" + x + ")"
    return(format)
}

end


