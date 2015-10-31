mata: 

class d3stack { 

    string            scalar    stack
    void              new()
    string            scalar    get() 
    string            scalar    offset() 
    string            scalar    order() 
    string            scalar    out() 
    string            scalar    values() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3stack::get() { 
    return(this.stack)
}

void d3stack::new() {
    this.stack = "stack"
}

string scalar d3stack::offset(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".offset(" + x + ")"
    return(stack)
}

string scalar d3stack::order(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".order(" + x + ")"
    return(stack)
}

string scalar d3stack::out(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".out(" + x + ")"
    return(stack)
}

string scalar d3stack::values(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".values(" + x + ")"
    return(stack)
}

string scalar d3stack::x(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".x(" + x + ")"
    return(stack)
}

string scalar d3stack::y(string scalar x) { 
    string scalar stack 
    stack = this.get() + ".y(" + x + ")"
    return(stack)
}

end


