mata: 

class d3symbol extends d3 { 

    private   string  scalar    symbol
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    size() 
    string            scalar    type() 

}

string scalar d3symbol::get() { 
    return(this.symbol)
}

string scalar d3symbol::end() { 
    string scalar symbolObject 
    symbolObject = this.get() + ";"
    return(symbolObject)
}

string scalar d3symbol::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "symbol"
    return(jsvarname)
}

void d3symbol::new() {
    this.symbol = this.setVarnm(STsymbol)
}

string scalar d3symbol::size(string scalar x) { 
    string scalar symbol 
    this.symbol = this.get() + ".size(" + x + ")"
    return(symbol)
}

string scalar d3symbol::type(string scalar x) { 
    string scalar symbol 
    this.symbol = this.get() + ".type(" + x + ")"
    return(symbol)
}

end


