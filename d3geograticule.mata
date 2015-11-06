mata: 

class d3geograticule { 
	private:
	string				scalar	graticule
	
	public:
	void						new(), destroy(), init(), extent(), graticule(), 
								lines(), majorExtent(), majorStep(), minorStep(),
								minorExtent(), outline(), precision(), step()
	string				scalar	get(), complete()
}

string scalar d3geograticule::get() { 
    return(this.graticule)
}

string scalar d3geograticule::complete() { 
    string scalar graticuleObject 
    graticuleObject = this.get() + ";"
    return(graticuleObject)
}

void d3geograticule::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.graticule = "var " + vnm + " = " + arguments
	}
	else {
		this.graticule = vnm
	}	
}

void d3geograticule::new() {
}

void d3geograticule::destroy() {
}

void d3geograticule::extent(string scalar extent) { 
    this.graticule = this.get() + ".extent(" + extent + ")"
}

void d3geograticule::graticule() { 
    this.graticule = this.get() + ".graticule()"
}

void d3geograticule::lines() { 
    this.graticule = this.get() + ".lines()"
}

void d3geograticule::majorExtent(string scalar extent) { 
    this.graticule = this.get() + ".majorExtent(" + extent + ")"
}

void d3geograticule::majorStep(string scalar step) { 
    this.graticule = this.get() + ".majorStep(" + step + ")"
}

void d3geograticule::minorExtent(string scalar extent) { 
    this.graticule = this.get() + ".minorExtent(" + extent + ")"
}

void d3geograticule::minorStep(string scalar step) { 
    this.graticule = this.get() + ".minorStep(" + step + ")"
}

void d3geograticule::outline() { 
    this.graticule = this.get() + ".outline()"
}

void d3geograticule::precision(string scalar precision) { 
    this.graticule = this.get() + ".precision(" + precision + ")"
}

void d3geograticule::step(string scalar step) { 
    this.graticule = this.get() + ".step(" + step + ")"
}

end


