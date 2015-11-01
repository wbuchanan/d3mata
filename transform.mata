mata: 

class d3transform { 

    private   string  scalar    transform
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    stream() 

}

string scalar d3transform::get() { 
    return(this.transform)
}

string scalar d3transform::complete() { 
    string scalar transformObject 
    transformObject = this.get() + ";"
    return(transformObject)
}

string scalar d3transform::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "transform()"
    return(jsvarname)
}

void d3transform::new() {
    this.transform = this.setVarnm(STtransform)
}

string scalar d3transform::stream(string scalar x) { 
    string scalar transform 
    this.transform = this.get() + ".stream(" + x + ")"
    return(transform)
}

end


