mata: 

class d3math { 
	private:
	string				scalar	math
	
	public:
	void						new(), destroy(), init(), normal(), logNormal(), 
								bates(), irwinHall()
	string				scalar	get(), complete()
}

string scalar d3math::get() { 
    return(this.math)
}

string scalar d3math::complete() {
	return(this.get() + ";")
}


void d3math::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.math = "var " + vnm + " = " + arguments
	}
	else {
		this.math = vnm
	}
}

void d3math::new() {
}

void d3math::destroy() {
}

void d3math::normal(| string scalar mean, string scalar sd) {
	if (mean != "" & sd != "") {	
		this.math = this.get() + ".normal(" + mean + ", " + sd + ");"
	}
	else if (mean != "" & sd == "") {
		this.math = this.get() + ".normal(" + mean + ", 1);"
	}
	else {
		this.math = this.get() + ".normal(0.0, 1);"
	}
}


void d3math::logNormal(| string scalar mean, string scalar sd) {
	if (mean != "" & sd != "") {	
		this.math = this.get() + ".logNormal(" + mean + ", " + sd + ");"
	}
	else if (mean != "" & sd == "") {
		this.math = this.get() + ".logNormal(" + mean + ", 1);"
	}
	else {
		this.math = this.get() + ".logNormal(0.0, 1);"
	}
}


void d3math::bates(string scalar count) {
	this.math = this.get() + ".bates(" + count + ");"
}


void d3math::irwinHall(string scalar count) {
	this.math = this.get() + ".irwinHall(" + count + ");"
}

end
