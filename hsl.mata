mata: 

class d3hsl { 

    private   string  scalar    hsl
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3hsl::get() { 
    return(this.hsl)
}

string scalar d3hsl::complete() { 
    string scalar hslObject 
    hslObject = this.get() + ";"
    return(hslObject)
}

string scalar d3hsl::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "hsl()"
    return(jsvarname)
}

void d3hsl::new() {
    this.hsl = this.setVarnm(SThsl)
}

string scalar d3hsl::brighter(string scalar x) { 
    string scalar hsl 
    this.hsl = this.get() + ".brighter(" + x + ")"
    return(hsl)
}

string scalar d3hsl::darker(string scalar x) { 
    string scalar hsl 
    this.hsl = this.get() + ".darker(" + x + ")"
    return(hsl)
}

string scalar d3hsl::rgb(string scalar x) { 
    string scalar hsl 
    this.hsl = this.get() + ".rgb(" + x + ")"
    return(hsl)
}

string scalar d3hsl::toString(string scalar x) { 
    string scalar hsl 
    this.hsl = this.get() + ".toString(" + x + ")"
    return(hsl)
}

end


