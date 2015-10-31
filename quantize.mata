mata: 

class d3quantize extends d3 { 

    private   string  scalar    quantize
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    range() 

}

string scalar d3quantize::get() { 
    return(this.quantize)
}

string scalar d3quantize::end() { 
    string scalar quantizeObject 
    quantizeObject = this.get() + ";"
    return(quantizeObject)
}

string scalar d3quantize::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "quantize"
    return(jsvarname)
}

void d3quantize::new() {
    this.quantize = this.setVarnm(STquantize)
}

string scalar d3quantize::copy(string scalar x) { 
    string scalar quantize 
    this.quantize = this.get() + ".copy(" + x + ")"
    return(quantize)
}

string scalar d3quantize::domain(string scalar x) { 
    string scalar quantize 
    this.quantize = this.get() + ".domain(" + x + ")"
    return(quantize)
}

string scalar d3quantize::invertExtent(string scalar x) { 
    string scalar quantize 
    this.quantize = this.get() + ".invertExtent(" + x + ")"
    return(quantize)
}

string scalar d3quantize::range(string scalar x) { 
    string scalar quantize 
    this.quantize = this.get() + ".range(" + x + ")"
    return(quantize)
}

end


