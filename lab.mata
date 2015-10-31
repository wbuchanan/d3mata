mata: 

class d3lab { 

    string            scalar    lab
    void              new()
    string            scalar    get() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3lab::get() { 
    return(this.lab)
}

void d3lab::new() {
    this.lab = "lab"
}

string scalar d3lab::brighter(string scalar x) { 
    string scalar lab 
    lab = this.get() + ".brighter(" + x + ")"
    return(lab)
}

string scalar d3lab::darker(string scalar x) { 
    string scalar lab 
    lab = this.get() + ".darker(" + x + ")"
    return(lab)
}

string scalar d3lab::rgb(string scalar x) { 
    string scalar lab 
    lab = this.get() + ".rgb(" + x + ")"
    return(lab)
}

string scalar d3lab::toString(string scalar x) { 
    string scalar lab 
    lab = this.get() + ".toString(" + x + ")"
    return(lab)
}

end


