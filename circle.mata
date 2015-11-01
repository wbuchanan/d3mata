mata: 

class d3circle { 

    private   string  scalar    circle
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    angle() 
    string            scalar    origin() 
    string            scalar    precision() 

}

string scalar d3circle::get() { 
    return(this.circle)
}

string scalar d3circle::complete() { 
    string scalar circleObject 
    circleObject = this.get() + ";"
    return(circleObject)
}

string scalar d3circle::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "circle()"
    return(jsvarname)
}

void d3circle::new() {
    this.circle = this.setVarnm(STcircle)
}

string scalar d3circle::angle(string scalar x) { 
    string scalar circle 
    this.circle = this.get() + ".angle(" + x + ")"
    return(circle)
}

string scalar d3circle::origin(string scalar x) { 
    string scalar circle 
    this.circle = this.get() + ".origin(" + x + ")"
    return(circle)
}

string scalar d3circle::precision(string scalar x) { 
    string scalar circle 
    this.circle = this.get() + ".precision(" + x + ")"
    return(circle)
}

end


