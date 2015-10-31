mata: 

class d3symbol { 

    string            scalar    symbol
    void              new()
    string            scalar    get() 
    string            scalar    size() 
    string            scalar    type() 

}

string scalar d3symbol::get() { 
    return(this.symbol)
}

void d3symbol::new() {
    this.symbol = "symbol"
}

string scalar d3symbol::size(string scalar x) { 
    string scalar symbol 
    symbol = this.get() + ".size(" + x + ")"
    return(symbol)
}

string scalar d3symbol::type(string scalar x) { 
    string scalar symbol 
    symbol = this.get() + ".type(" + x + ")"
    return(symbol)
}

end


