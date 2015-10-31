mata: 

class d3clipExtent { 

    string            scalar    clipExtent
    void              new()
    string            scalar    get() 
    string            scalar    extent() 

}

string scalar d3clipExtent::get() { 
    return(this.clipExtent)
}

void d3clipExtent::new() {
    this.clipExtent = "clipExtent"
}

string scalar d3clipExtent::extent(string scalar x) { 
    string scalar clipExtent 
    clipExtent = this.get() + ".extent(" + x + ")"
    return(clipExtent)
}

end


