mata: 

class d3nest { 

    string            scalar    nest
    void              new()
    string            scalar    get() 
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

void d3nest::new() {
    this.nest = "nest"
}

string scalar d3nest::entries(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".entries(" + x + ")"
    return(nest)
}

string scalar d3nest::key(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".key(" + x + ")"
    return(nest)
}

string scalar d3nest::map(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".map(" + x + ")"
    return(nest)
}

string scalar d3nest::rollup(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".rollup(" + x + ")"
    return(nest)
}

string scalar d3nest::sortKeys(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".sortKeys(" + x + ")"
    return(nest)
}

string scalar d3nest::sortValues(string scalar x) { 
    string scalar nest 
    nest = this.get() + ".sortValues(" + x + ")"
    return(nest)
}

end


