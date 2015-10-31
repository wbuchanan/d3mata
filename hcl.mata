mata: 

class d3hcl { 

    string            scalar    hcl
    void              new()
    string            scalar    get() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3hcl::get() { 
    return(this.hcl)
}

void d3hcl::new() {
    this.hcl = "hcl"
}

string scalar d3hcl::brighter(string scalar x) { 
    string scalar hcl 
    hcl = this.get() + ".brighter(" + x + ")"
    return(hcl)
}

string scalar d3hcl::darker(string scalar x) { 
    string scalar hcl 
    hcl = this.get() + ".darker(" + x + ")"
    return(hcl)
}

string scalar d3hcl::rgb(string scalar x) { 
    string scalar hcl 
    hcl = this.get() + ".rgb(" + x + ")"
    return(hcl)
}

string scalar d3hcl::toString(string scalar x) { 
    string scalar hcl 
    hcl = this.get() + ".toString(" + x + ")"
    return(hcl)
}

end


