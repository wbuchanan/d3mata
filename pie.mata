mata: 

class d3pie extends d3 { 

    private   string  scalar    pie
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    endAngle() 
    string            scalar    padAngle() 
    string            scalar    sort() 
    string            scalar    startAngle() 
    string            scalar    value() 

}

string scalar d3pie::get() { 
    return(this.pie)
}

string scalar d3pie::end() { 
    string scalar pieObject 
    pieObject = this.get() + ";"
    return(pieObject)
}

string scalar d3pie::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "pie"
    return(jsvarname)
}

void d3pie::new() {
    this.pie = this.setVarnm(STpie)
}

string scalar d3pie::endAngle(string scalar x) { 
    string scalar pie 
    this.pie = this.get() + ".endAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::padAngle(string scalar x) { 
    string scalar pie 
    this.pie = this.get() + ".padAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::sort(string scalar x) { 
    string scalar pie 
    this.pie = this.get() + ".sort(" + x + ")"
    return(pie)
}

string scalar d3pie::startAngle(string scalar x) { 
    string scalar pie 
    this.pie = this.get() + ".startAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::value(string scalar x) { 
    string scalar pie 
    this.pie = this.get() + ".value(" + x + ")"
    return(pie)
}

end


