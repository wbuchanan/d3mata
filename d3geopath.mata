mata: 

class d3geopath { 

    private   string  scalar    path
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete()
	void						path()
    void                        area() 
    void                        bounds() 
    void                        centroid() 
    void                        context() 
    void                        pointRadius() 
    void                        projection() 

}

string scalar d3geopath::get() { 
    return(this.path)
}

string scalar d3geopath::complete() { 
    string scalar pathObject 
    pathObject = this.get() + ";"
    return(pathObject)
}

void d3geopath::init(string scalar vnm, string scalar ob) { 
    this.path = "var " + vnm + " = " + ob + ".path()"
}

void d3geopath::new() {
}

void d3geopath::path(string scalar feature, | string scalar index) {
	if (index != "") {
		this.path = this.get() + ".path(" + feature + ", " + index + ")"
	}
	else {
		this.path = this.get() + ".path(" + feature + ")"
	}
}	

void d3geopath::area(string scalar feature) {
	this.path = this.get() + ".area(" + feature + ")"
}

void d3geopath::bounds(string scalar feature) {
	this.path = this.get() + ".bounds(" + feature + ")"
}

void d3geopath::centroid(string scalar feature) {
	this.path = this.get() + ".centroid(" + feature + ")"
}

void d3geopath::context(| string scalar context) {
	if (context != "") {
		this.path = this.get() + ".context(" + context + ")"
	}
	else {
		this.path = this.get() + ".context()"
	}
}

void d3geopath::pointRadius(| string scalar radius) {
	if (radius != "") {
		this.path = this.get() + ".pointRadius(" + radius + ")"
	}
	else {
		this.path = this.get() + ".pointRadius()"
	}
}

void d3geopath::projection(| string scalar projection) {
	if (projection != "") {
		this.path = this.get() + ".projection(" + projection + ")"
	}
	else {
		this.path = this.get() + ".projection()"
	}
}

end
