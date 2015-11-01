mata: 

class d3rotation { 

    private   string  scalar    rotation
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    invert() 

}

string scalar d3rotation::get() { 
    return(this.rotation)
}

string scalar d3rotation::complete() { 
    string scalar rotationObject 
    rotationObject = this.get() + ";"
    return(rotationObject)
}

string scalar d3rotation::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "rotation()"
    return(jsvarname)
}

void d3rotation::new() {
    this.rotation = this.setVarnm(STrotation)
}

string scalar d3rotation::invert(string scalar x) { 
    string scalar rotation 
    this.rotation = this.get() + ".invert(" + x + ")"
    return(rotation)
}

end


