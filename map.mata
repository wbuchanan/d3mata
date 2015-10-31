mata: 

class d3map { 

    string            scalar    map
    void              new()
    string            scalar    get() 
    string            scalar    empty() 
    string            scalar    entries() 
    string            scalar    forEach() 
    string            scalar    has() 
    string            scalar    keys() 
    string            scalar    remove() 
    string            scalar    set() 
    string            scalar    size() 
    string            scalar    values() 

}

string scalar d3map::get() { 
    return(this.map)
}

void d3map::new() {
    this.map = "map"
}

string scalar d3map::empty(string scalar x) { 
    string scalar map 
    map = this.get() + ".empty(" + x + ")"
    return(map)
}

string scalar d3map::entries(string scalar x) { 
    string scalar map 
    map = this.get() + ".entries(" + x + ")"
    return(map)
}

string scalar d3map::forEach(string scalar x) { 
    string scalar map 
    map = this.get() + ".forEach(" + x + ")"
    return(map)
}

string scalar d3map::get(string scalar x) { 
    string scalar map 
    map = this.get() + ".get(" + x + ")"
    return(map)
}

string scalar d3map::has(string scalar x) { 
    string scalar map 
    map = this.get() + ".has(" + x + ")"
    return(map)
}

string scalar d3map::keys(string scalar x) { 
    string scalar map 
    map = this.get() + ".keys(" + x + ")"
    return(map)
}

string scalar d3map::remove(string scalar x) { 
    string scalar map 
    map = this.get() + ".remove(" + x + ")"
    return(map)
}

string scalar d3map::set(string scalar x) { 
    string scalar map 
    map = this.get() + ".set(" + x + ")"
    return(map)
}

string scalar d3map::size(string scalar x) { 
    string scalar map 
    map = this.get() + ".size(" + x + ")"
    return(map)
}

string scalar d3map::values(string scalar x) { 
    string scalar map 
    map = this.get() + ".values(" + x + ")"
    return(map)
}

end


