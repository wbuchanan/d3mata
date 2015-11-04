mata: 

class d3ltreemap { 

    private   string  scalar    treemap
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        children() 
    void                        links() 
    void                        mode() 
    void                        nodes() 
    void                        padding() 
    void                        round() 
    void                        size() 
    void                        sort() 
    void                        sticky() 
    void                        value() 

}

string scalar d3ltreemap::get() { 
    return(this.treemap)
}

string scalar d3ltreemap::complete() { 
    string scalar treemapObject 
    treemapObject = this.get() + ";"
    return(treemapObject)
}

void d3ltreemap::init(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "treemap()"
    return(jsvarname)
}

void d3ltreemap::new() {
}

void d3ltreemap::children(string scalar x) { 
    string scalar t 
    t = this.get() + ".children(" + x + ")"
    this.treemap = t
}

void d3ltreemap::links(string scalar x) { 
    string scalar t 
    t = this.get() + ".links(" + x + ")"
    this.treemap = t
}

void d3ltreemap::mode(string scalar x) { 
    string scalar t 
    t = this.get() + ".mode(" + x + ")"
    this.treemap = t
}

void d3ltreemap::nodes(string scalar x) { 
    string scalar t 
    t = this.get() + ".nodes(" + x + ")"
    this.treemap = t
}

void d3ltreemap::padding(string scalar x) { 
    string scalar t 
    t = this.get() + ".padding(" + x + ")"
    this.treemap = t
}

void d3ltreemap::round(string scalar x) { 
    string scalar t 
    t = this.get() + ".round(" + x + ")"
    this.treemap = t
}

void d3ltreemap::size(string scalar x) { 
    string scalar t 
    t = this.get() + ".size(" + x + ")"
    this.treemap = t
}

void d3ltreemap::sort(string scalar x) { 
    string scalar t 
    t = this.get() + ".sort(" + x + ")"
    this.treemap = t
}

void d3ltreemap::sticky(string scalar x) { 
    string scalar t 
    t = this.get() + ".sticky(" + x + ")"
    this.treemap = t
}

void d3ltreemap::value(string scalar x) { 
    string scalar t 
    t = this.get() + ".value(" + x + ")"
    this.treemap = t
}

end


