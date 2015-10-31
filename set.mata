mata: 

class d3set { 

    string            scalar    set
    void              new()
    string            scalar    get() 
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

void d3set::new() {
    this.set = "set"
}

string scalar d3set::add(string scalar x) { 
    string scalar set 
    set = this.get() + ".add(" + x + ")"
    return(set)
}

string scalar d3set::empty(string scalar x) { 
    string scalar set 
    set = this.get() + ".empty(" + x + ")"
    return(set)
}

string scalar d3set::forEach(string scalar x) { 
    string scalar set 
    set = this.get() + ".forEach(" + x + ")"
    return(set)
}

string scalar d3set::has(string scalar x) { 
    string scalar set 
    set = this.get() + ".has(" + x + ")"
    return(set)
}

string scalar d3set::remove(string scalar x) { 
    string scalar set 
    set = this.get() + ".remove(" + x + ")"
    return(set)
}

string scalar d3set::size(string scalar x) { 
    string scalar set 
    set = this.get() + ".size(" + x + ")"
    return(set)
}

string scalar d3set::values(string scalar x) { 
    string scalar set 
    set = this.get() + ".values(" + x + ")"
    return(set)
}

end


