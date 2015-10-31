mata: 

class d3transform { 

    string            scalar    transform
    void              new()
    string            scalar    get() 
    string            scalar    stream() 

}

string scalar d3transform::get() { 
    return(this.transform)
}

void d3transform::new() {
    this.transform = "transform"
}

string scalar d3transform::stream(string scalar x) { 
    string scalar transform 
    transform = this.get() + ".stream(" + x + ")"
    return(transform)
}

end


