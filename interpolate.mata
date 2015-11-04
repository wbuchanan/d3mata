mata: 

class d3interpolate { 

    private   string  scalar    interpolate
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 

}

string scalar d3interpolate::get() { 
    return(this.interpolate)
}

string scalar d3interpolate::complete() { 
    string scalar interpolateObject 
    interpolateObject = this.get() + ";"
    return(interpolateObject)
}

void d3interpolate::init(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "interpolate()"
    return(jsvarname)
}

void d3interpolate::new() {
}

end


