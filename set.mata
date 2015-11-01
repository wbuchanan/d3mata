mata: 

class d3set { 

    private   string  scalar    set
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    add() 
    string            scalar    empty() 
    string            scalar    forEach() 
    string            scalar    has() 
    string            scalar    remove() 
    string            scalar    size() 
    string            scalar    values() 

}

string scalar d3set::get() { 
    return(this.set)
}

string scalar d3set::complete() { 
    string scalar setObject 
    setObject = this.get() + ";"
    return(setObject)
}

string scalar d3set::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "set()"
    return(jsvarname)
}

void d3set::new() {
    this.set = this.setVarnm(STset)
}

string scalar d3set::add(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".add(" + x + ")"
    return(set)
}

string scalar d3set::empty(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".empty(" + x + ")"
    return(set)
}

string scalar d3set::forEach(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".forEach(" + x + ")"
    return(set)
}

string scalar d3set::has(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".has(" + x + ")"
    return(set)
}

string scalar d3set::remove(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".remove(" + x + ")"
    return(set)
}

string scalar d3set::size(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".size(" + x + ")"
    return(set)
}

string scalar d3set::values(string scalar x) { 
    string scalar set 
    this.set = this.get() + ".values(" + x + ")"
    return(set)
}

end


