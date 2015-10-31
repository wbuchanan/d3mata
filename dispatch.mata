mata: 

class d3dispatch { 

    string            scalar    dispatch
    void              new()
    string            scalar    get() 
    string            scalar    on() 
    string            scalar    type() 

}

string scalar d3dispatch::get() { 
    return(this.dispatch)
}

void d3dispatch::new() {
    this.dispatch = "dispatch"
}

string scalar d3dispatch::on(string scalar x) { 
    string scalar dispatch 
    dispatch = this.get() + ".on(" + x + ")"
    return(dispatch)
}

string scalar d3dispatch::type(string scalar x) { 
    string scalar dispatch 
    dispatch = this.get() + ".type(" + x + ")"
    return(dispatch)
}

end


