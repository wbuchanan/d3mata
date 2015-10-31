mata: 

class d3pack { 

    string            scalar    pack
    void              new()
    string            scalar    get() 
    string            scalar    children() 
    string            scalar    links() 
    string            scalar    nodes() 
    string            scalar    padding() 
    string            scalar    radius() 
    string            scalar    size() 
    string            scalar    sort() 
    string            scalar    value() 

}

string scalar d3pack::get() { 
    return(this.pack)
}

void d3pack::new() {
    this.pack = "pack"
}

string scalar d3pack::children(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".children(" + x + ")"
    return(pack)
}

string scalar d3pack::links(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".links(" + x + ")"
    return(pack)
}

string scalar d3pack::nodes(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".nodes(" + x + ")"
    return(pack)
}

string scalar d3pack::padding(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".padding(" + x + ")"
    return(pack)
}

string scalar d3pack::radius(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".radius(" + x + ")"
    return(pack)
}

string scalar d3pack::size(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".size(" + x + ")"
    return(pack)
}

string scalar d3pack::sort(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".sort(" + x + ")"
    return(pack)
}

string scalar d3pack::value(string scalar x) { 
    string scalar pack 
    pack = this.get() + ".value(" + x + ")"
    return(pack)
}

end


