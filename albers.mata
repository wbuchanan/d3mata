mata: 

class d3albers { 

    string            scalar    albers
    void              new()
    string            scalar    get() 
    string            scalar    parallels() 

}

string scalar d3albers::get() { 
    return(this.albers)
}

void d3albers::new() {
    this.albers = "albers"
}

string scalar d3albers::parallels(string scalar x) { 
    string scalar albers 
    albers = this.get() + ".parallels(" + x + ")"
    return(albers)
}

end


