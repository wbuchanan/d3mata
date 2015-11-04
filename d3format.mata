mata: 

class d3format { 

    private   string  scalar    format
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        parse() 

}

string scalar d3format::get() { 
    return(this.format)
}

string scalar d3format::complete() { 
    string scalar formatObject 
    formatObject = this.get() + ";"
    return(formatObject)
}

void d3format::init(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "format()"
    return(jsvarname)
}

void d3format::new() {
}

void d3format::parse(string scalar x) { 
    string scalar f 
    f = this.get() + ".parse(" + x + ")"
    this.format = f
}

end


