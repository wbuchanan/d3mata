mata: 

class d3hcl { 

    private   string  scalar    hcl
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3hcl::get() { 
    return(this.hcl)
}

string scalar d3hcl::complete() { 
    string scalar hclObject 
    hclObject = this.get() + ";"
    return(hclObject)
}

string scalar d3hcl::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "hcl()"
    return(jsvarname)
}

void d3hcl::new() {
    this.hcl = this.setVarnm(SThcl)
}

string scalar d3hcl::brighter(string scalar x) { 
    string scalar hcl 
    this.hcl = this.get() + ".brighter(" + x + ")"
    return(hcl)
}

string scalar d3hcl::darker(string scalar x) { 
    string scalar hcl 
    this.hcl = this.get() + ".darker(" + x + ")"
    return(hcl)
}

string scalar d3hcl::rgb(string scalar x) { 
    string scalar hcl 
    this.hcl = this.get() + ".rgb(" + x + ")"
    return(hcl)
}

string scalar d3hcl::toString(string scalar x) { 
    string scalar hcl 
    this.hcl = this.get() + ".toString(" + x + ")"
    return(hcl)
}

end


