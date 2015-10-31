mata: 

class d3rotation { 

    string            scalar    rotation
    void              new()
    string            scalar    get() 
    string            scalar    invert() 

}

string scalar d3rotation::get() { 
    return(this.rotation)
}

void d3rotation::new() {
    this.rotation = "rotation"
}

string scalar d3rotation::invert(string scalar x) { 
    string scalar rotation 
    rotation = this.get() + ".invert(" + x + ")"
    return(rotation)
}

end


