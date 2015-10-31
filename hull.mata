mata: 

class d3hull extends d3 { 

    private   string  scalar    hull
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3hull::get() { 
    return(this.hull)
}

string scalar d3hull::end() { 
    string scalar hullObject 
    hullObject = this.get() + ";"
    return(hullObject)
}

string scalar d3hull::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "hull"
    return(jsvarname)
}

void d3hull::new() {
    this.hull = this.setVarnm(SThull)
}

string scalar d3hull::x(string scalar x) { 
    string scalar hull 
    this.hull = this.get() + ".x(" + x + ")"
    return(hull)
}

string scalar d3hull::y(string scalar x) { 
    string scalar hull 
    this.hull = this.get() + ".y(" + x + ")"
    return(hull)
}

end


