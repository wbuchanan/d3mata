mata: 

class d3rgb { 

    private   string  scalar    rgb
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    hsl() 
    string            scalar    toString() 

}

string scalar d3rgb::get() { 
    return(this.rgb)
}

string scalar d3rgb::complete() { 
    string scalar rgbObject 
    rgbObject = this.get() + ";"
    return(rgbObject)
}

string scalar d3rgb::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "rgb()"
    return(jsvarname)
}

void d3rgb::new() {
    this.rgb = this.setVarnm(STrgb)
}

string scalar d3rgb::brighter(string scalar x) { 
    string scalar rgb 
    this.rgb = this.get() + ".brighter(" + x + ")"
    return(rgb)
}

string scalar d3rgb::darker(string scalar x) { 
    string scalar rgb 
    this.rgb = this.get() + ".darker(" + x + ")"
    return(rgb)
}

string scalar d3rgb::hsl(string scalar x) { 
    string scalar rgb 
    this.rgb = this.get() + ".hsl(" + x + ")"
    return(rgb)
}

string scalar d3rgb::toString(string scalar x) { 
    string scalar rgb 
    this.rgb = this.get() + ".toString(" + x + ")"
    return(rgb)
}

end


