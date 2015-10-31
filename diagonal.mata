mata: 

class d3diagonal { 

    string            scalar    diagonal
    void              new()
    string            scalar    get() 
    string            scalar    projection() 
    string            scalar    source() 
    string            scalar    target() 

}

string scalar d3diagonal::get() { 
    return(this.diagonal)
}

void d3diagonal::new() {
    this.diagonal = "diagonal"
}

string scalar d3diagonal::projection(string scalar x) { 
    string scalar diagonal 
    diagonal = this.get() + ".projection(" + x + ")"
    return(diagonal)
}

string scalar d3diagonal::source(string scalar x) { 
    string scalar diagonal 
    diagonal = this.get() + ".source(" + x + ")"
    return(diagonal)
}

string scalar d3diagonal::target(string scalar x) { 
    string scalar diagonal 
    diagonal = this.get() + ".target(" + x + ")"
    return(diagonal)
}

end


