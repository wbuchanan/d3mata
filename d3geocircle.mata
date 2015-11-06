mata: 

class d3geocircle { 
	private:
	string				scalar	circle
	
	public:
	void						new(), destroy(), init(), circle(), angle(),
								origin(), precision()
	string				scalar	get(), complete()
}

string scalar d3geocircle::get() { 
    return(this.circle)
}

string scalar d3geocircle::complete() { 
    string scalar circleObject 
    circleObject = this.get() + ";"
    return(circleObject)
}

void d3geocircle::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.circle = "var " + vnm + " = " + arguments
	}
	else {
		this.circle = vnm
	}	
}

void d3geocircle::new() {
}

void d3geocircle::destroy() {
}

void d3geocircle::circle(string scalar arguments) {
	this.circle = this.get() + ".circle(" + arguments + ")"
}

void d3geocircle::angle(| string scalar angle) { 
	if (angle != "") {
		this.circle = this.get() + ".angle(" + angle + ")"
	}
	else {
		this.circle = this.get() + ".angle()"
	}
}

void d3geocircle::origin(| string scalar origin) { 
	if (origin != "") {
		this.circle = this.get() + ".origin(" + origin + ")"
	}
	else {
		this.circle = this.get() + ".origin()"
	}
}

void d3geocircle::precision(| string scalar precision) { 
	if (precision != "") {
		this.circle = this.get() + ".precision(" + precision + ")"
	}
	else {
		this.circle = this.get() + ".precision()"
	}
}

end


