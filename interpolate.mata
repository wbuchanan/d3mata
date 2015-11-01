mata: 

class d3interpolate { 

    private   string  scalar    interpolate
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 

}

string scalar d3interpolate::get() { 
    return(this.interpolate)
}

string scalar d3interpolate::complete() { 
    string scalar interpolateObject 
    interpolateObject = this.get() + ";"
    return(interpolateObject)
}

string scalar d3interpolate::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "interpolate()"
    return(jsvarname)
}

void d3interpolate::new() {
    this.interpolate = this.setVarnm(STinterpolate)
}

end


