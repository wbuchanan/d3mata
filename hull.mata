mata: 

class d3hull { 

    string            scalar    hull
    void              new()
    string            scalar    get() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3hull::get() { 
    return(this.hull)
}

void d3hull::new() {
    this.hull = "hull"
}

string scalar d3hull::x(string scalar x) { 
    string scalar hull 
    hull = this.get() + ".x(" + x + ")"
    return(hull)
}

string scalar d3hull::y(string scalar x) { 
    string scalar hull 
    hull = this.get() + ".y(" + x + ")"
    return(hull)
}

end


