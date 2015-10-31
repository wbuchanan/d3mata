mata: 

class d3bundle { 

    string            scalar    bundle
    void              new()
    string            scalar    get() 

}

string scalar d3bundle::get() { 
    return(this.bundle)
}

void d3bundle::new() {
    this.bundle = "bundle"
}

end


