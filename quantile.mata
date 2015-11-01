mata: 

class d3quantile { 

    private   string  scalar    quantile
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    quantiles() 
    string            scalar    range() 

}

string scalar d3quantile::get() { 
    return(this.quantile)
}

string scalar d3quantile::complete() { 
    string scalar quantileObject 
    quantileObject = this.get() + ";"
    return(quantileObject)
}

string scalar d3quantile::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "quantile()"
    return(jsvarname)
}

void d3quantile::new() {
    this.quantile = this.setVarnm(STquantile)
}

string scalar d3quantile::copy(string scalar x) { 
    string scalar quantile 
    this.quantile = this.get() + ".copy(" + x + ")"
    return(quantile)
}

string scalar d3quantile::domain(string scalar x) { 
    string scalar quantile 
    this.quantile = this.get() + ".domain(" + x + ")"
    return(quantile)
}

string scalar d3quantile::invertExtent(string scalar x) { 
    string scalar quantile 
    this.quantile = this.get() + ".invertExtent(" + x + ")"
    return(quantile)
}

string scalar d3quantile::quantiles(string scalar x) { 
    string scalar quantile 
    this.quantile = this.get() + ".quantiles(" + x + ")"
    return(quantile)
}

string scalar d3quantile::range(string scalar x) { 
    string scalar quantile 
    this.quantile = this.get() + ".range(" + x + ")"
    return(quantile)
}

end


