mata: 

class d3hierarchy { 

    private   string  scalar    hierarchy
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    children() 
    string            scalar    links() 
    string            scalar    nodes() 
    string            scalar    revalue() 
    string            scalar    sort() 
    string            scalar    value() 

}

string scalar d3hierarchy::get() { 
    return(this.hierarchy)
}

string scalar d3hierarchy::complete() { 
    string scalar hierarchyObject 
    hierarchyObject = this.get() + ";"
    return(hierarchyObject)
}

string scalar d3hierarchy::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "hierarchy()"
    return(jsvarname)
}

void d3hierarchy::new() {
    this.hierarchy = this.setVarnm(SThierarchy)
}

string scalar d3hierarchy::children(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".children(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::links(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".links(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::nodes(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".nodes(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::revalue(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".revalue(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::sort(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".sort(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::value(string scalar x) { 
    string scalar hierarchy 
    this.hierarchy = this.get() + ".value(" + x + ")"
    return(hierarchy)
}

end


