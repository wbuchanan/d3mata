mata: 

class d3hierarchy { 

    string            scalar    hierarchy
    void              new()
    string            scalar    get() 
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

void d3hierarchy::new() {
    this.hierarchy = "hierarchy"
}

string scalar d3hierarchy::children(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".children(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::links(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".links(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::nodes(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".nodes(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::revalue(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".revalue(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::sort(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".sort(" + x + ")"
    return(hierarchy)
}

string scalar d3hierarchy::value(string scalar x) { 
    string scalar hierarchy 
    hierarchy = this.get() + ".value(" + x + ")"
    return(hierarchy)
}

end


