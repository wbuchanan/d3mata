mata: 

class d3interpolate { 

    string            scalar    interpolate
    void              new()
    string            scalar    get() 

}

string scalar d3interpolate::get() { 
    return(this.interpolate)
}

void d3interpolate::new() {
    this.interpolate = "interpolate"
}

end


