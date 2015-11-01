mata: 

class d3nest { 

    private   string  scalar    nest
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    entries() 
    string            scalar    key() 
    string            scalar    map() 
    string            scalar    rollup() 
    string            scalar    sortKeys() 
    string            scalar    sortValues() 

}

string scalar d3nest::get() { 
    return(this.nest)
}

string scalar d3nest::complete() { 
    string scalar nestObject 
    nestObject = this.get() + ";"
    return(nestObject)
}

string scalar d3nest::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "nest()"
    return(jsvarname)
}

void d3nest::new() {
    this.nest = this.setVarnm(STnest)
}

string scalar d3nest::entries(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".entries(" + x + ")"
    return(nest)
}

string scalar d3nest::key(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".key(" + x + ")"
    return(nest)
}

string scalar d3nest::map(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".map(" + x + ")"
    return(nest)
}

string scalar d3nest::rollup(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".rollup(" + x + ")"
    return(nest)
}

string scalar d3nest::sortKeys(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".sortKeys(" + x + ")"
    return(nest)
}

string scalar d3nest::sortValues(string scalar x) { 
    string scalar nest 
    this.nest = this.get() + ".sortValues(" + x + ")"
    return(nest)
}

end


