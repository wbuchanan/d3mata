mata: 

class d3stack { 

    private   string  scalar    stack
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
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

string scalar d3stack::complete() { 
    string scalar stackObject 
    stackObject = this.get() + ";"
    return(stackObject)
}

string scalar d3stack::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "stack()"
    return(jsvarname)
}

void d3stack::new() {
    this.stack = this.setVarnm(STstack)
}

string scalar d3stack::offset(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".offset(" + x + ")"
    return(stack)
}

string scalar d3stack::order(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".order(" + x + ")"
    return(stack)
}

string scalar d3stack::out(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".out(" + x + ")"
    return(stack)
}

string scalar d3stack::values(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".values(" + x + ")"
    return(stack)
}

string scalar d3stack::x(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".x(" + x + ")"
    return(stack)
}

string scalar d3stack::y(string scalar x) { 
    string scalar stack 
    this.stack = this.get() + ".y(" + x + ")"
    return(stack)
}

end


