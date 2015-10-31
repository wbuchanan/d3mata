mata: 

class d3diagonal extends d3 { 

    private   string  scalar    diagonal
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    projection() 
    string            scalar    source() 
    string            scalar    target() 

}

string scalar d3diagonal::get() { 
    return(this.diagonal)
}

string scalar d3diagonal::end() { 
    string scalar diagonalObject 
    diagonalObject = this.get() + ";"
    return(diagonalObject)
}

string scalar d3diagonal::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "diagonal"
    return(jsvarname)
}

void d3diagonal::new() {
    this.diagonal = this.setVarnm(STdiagonal)
}

string scalar d3diagonal::projection(string scalar x) { 
    string scalar diagonal 
    this.diagonal = this.get() + ".projection(" + x + ")"
    return(diagonal)
}

string scalar d3diagonal::source(string scalar x) { 
    string scalar diagonal 
    this.diagonal = this.get() + ".source(" + x + ")"
    return(diagonal)
}

string scalar d3diagonal::target(string scalar x) { 
    string scalar diagonal 
    this.diagonal = this.get() + ".target(" + x + ")"
    return(diagonal)
}

end


