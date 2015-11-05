mata: 

class d3geostream { 

    private   string  scalar    stream
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        lineEnd() 
    void                        lineStart() 
    void                        point() 
    void                        polygonEnd() 
    void                        polygonStart() 
    void                        sphere() 

}

string scalar d3geostream::get() { 
    return(this.stream)
}

string scalar d3geostream::complete() { 
    string scalar streamObject 
    streamObject = this.get() + ";"
    return(streamObject)
}

void d3geostream::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.stream = "var " + vnm + " = " + arguments
	}
	else {
		this.stream = vnm
	}	
}

void d3geostream::new() {
}

void d3geostream::destroy() {
}

void d3geostream::lineEnd() { 
    this.stream = this.get() + ".lineEnd()"
}

void d3geostream::lineStart() { 
    this.stream = this.get() + ".lineStart()"
}

void d3geostream::point(string scalar x, string scalar y, | string scalar z) { 
	if (z != "") {
		this.stream = this.get() + ".point(" + x + ", " + y + ", " + z + ")"
	}
	else {
		this.stream = this.get() + ".point(" + x + ", " + y + ")"
	}
}

void d3geostream::polygonEnd() { 
    this.stream = this.get() + ".polygonEnd()"
}

void d3geostream::polygonStart() { 
    this.stream = this.get() + ".polygonStart()"
}

void d3geostream::sphere() { 
    this.stream = this.get() + ".sphere()"
}

end


