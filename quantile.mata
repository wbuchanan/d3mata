mata: 

class d3quantile { 

    string            scalar    quantile
    void              new()
    string            scalar    get() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    quantiles() 
    string            scalar    range() 

}

string scalar d3quantile::get() { 
    return(this.quantile)
}

void d3quantile::new() {
    this.quantile = "quantile"
}

string scalar d3quantile::copy(string scalar x) { 
    string scalar quantile 
    quantile = this.get() + ".copy(" + x + ")"
    return(quantile)
}

string scalar d3quantile::domain(string scalar x) { 
    string scalar quantile 
    quantile = this.get() + ".domain(" + x + ")"
    return(quantile)
}

string scalar d3quantile::invertExtent(string scalar x) { 
    string scalar quantile 
    quantile = this.get() + ".invertExtent(" + x + ")"
    return(quantile)
}

string scalar d3quantile::quantiles(string scalar x) { 
    string scalar quantile 
    quantile = this.get() + ".quantiles(" + x + ")"
    return(quantile)
}

string scalar d3quantile::range(string scalar x) { 
    string scalar quantile 
    quantile = this.get() + ".range(" + x + ")"
    return(quantile)
}

end


