mata: 

class d3interpolate extends d3 { 

    private   string  scalar    interpolate
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 

}

string scalar d3interpolate::get() { 
    return(this.interpolate)
}

string scalar d3interpolate::end() { 
    string scalar interpolateObject 
    interpolateObject = this.get() + ";"
    return(interpolateObject)
}

string scalar d3interpolate::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "interpolate"
    return(jsvarname)
}

void d3interpolate::new() {
    this.interpolate = this.setVarnm(STinterpolate)
}

end


