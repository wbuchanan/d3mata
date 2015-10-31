mata: 

class d3quantize { 

    string            scalar    quantize
    void              new()
    string            scalar    get() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    range() 

}

string scalar d3quantize::get() { 
    return(this.quantize)
}

void d3quantize::new() {
    this.quantize = "quantize"
}

string scalar d3quantize::copy(string scalar x) { 
    string scalar quantize 
    quantize = this.get() + ".copy(" + x + ")"
    return(quantize)
}

string scalar d3quantize::domain(string scalar x) { 
    string scalar quantize 
    quantize = this.get() + ".domain(" + x + ")"
    return(quantize)
}

string scalar d3quantize::invertExtent(string scalar x) { 
    string scalar quantize 
    quantize = this.get() + ".invertExtent(" + x + ")"
    return(quantize)
}

string scalar d3quantize::range(string scalar x) { 
    string scalar quantize 
    quantize = this.get() + ".range(" + x + ")"
    return(quantize)
}

end


