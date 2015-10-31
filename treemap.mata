mata: 

class d3treemap { 

    string            scalar    treemap
    void              new()
    string            scalar    get() 
    string            scalar    children() 
    string            scalar    links() 
    string            scalar    mode() 
    string            scalar    nodes() 
    string            scalar    padding() 
    string            scalar    round() 
    string            scalar    size() 
    string            scalar    sort() 
    string            scalar    sticky() 
    string            scalar    value() 

}

string scalar d3treemap::get() { 
    return(this.treemap)
}

void d3treemap::new() {
    this.treemap = "treemap"
}

string scalar d3treemap::children(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".children(" + x + ")"
    return(treemap)
}

string scalar d3treemap::links(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".links(" + x + ")"
    return(treemap)
}

string scalar d3treemap::mode(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".mode(" + x + ")"
    return(treemap)
}

string scalar d3treemap::nodes(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".nodes(" + x + ")"
    return(treemap)
}

string scalar d3treemap::padding(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".padding(" + x + ")"
    return(treemap)
}

string scalar d3treemap::round(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".round(" + x + ")"
    return(treemap)
}

string scalar d3treemap::size(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".size(" + x + ")"
    return(treemap)
}

string scalar d3treemap::sort(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".sort(" + x + ")"
    return(treemap)
}

string scalar d3treemap::sticky(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".sticky(" + x + ")"
    return(treemap)
}

string scalar d3treemap::value(string scalar x) { 
    string scalar treemap 
    treemap = this.get() + ".value(" + x + ")"
    return(treemap)
}

end


