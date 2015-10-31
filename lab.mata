mata: 

class d3lab extends d3 { 

    private   string  scalar    lab
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3lab::get() { 
    return(this.lab)
}

string scalar d3lab::end() { 
    string scalar labObject 
    labObject = this.get() + ";"
    return(labObject)
}

string scalar d3lab::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "lab"
    return(jsvarname)
}

void d3lab::new() {
    this.lab = this.setVarnm(STlab)
}

string scalar d3lab::brighter(string scalar x) { 
    string scalar lab 
    this.lab = this.get() + ".brighter(" + x + ")"
    return(lab)
}

string scalar d3lab::darker(string scalar x) { 
    string scalar lab 
    this.lab = this.get() + ".darker(" + x + ")"
    return(lab)
}

string scalar d3lab::rgb(string scalar x) { 
    string scalar lab 
    this.lab = this.get() + ".rgb(" + x + ")"
    return(lab)
}

string scalar d3lab::toString(string scalar x) { 
    string scalar lab 
    this.lab = this.get() + ".toString(" + x + ")"
    return(lab)
}

end


