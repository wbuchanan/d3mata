mata: 

class d3lpie { 

    private   string  scalar    pie
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        pie() 
    void                        endAngle() 
    void                        padAngle() 
    void                        sort() 
    void                        startAngle() 
    void                        value() 

}

string scalar d3lpie::get() { 
    return(this.pie)
}

string scalar d3lpie::complete() { 
    string scalar pieObject 
    pieObject = this.get() + ";"
    return(pieObject)
}

void d3lpie::init(string scalar vnm, string scalar arguments) { 
	this.pie = "var " + vnm + " = " + arguments
}

void d3lpie::new() {
}


void d3lpie::pie(string scalar values, | string scalar index) { 
	if (index != "") {
		this.pie = this.get() + ".pie(" + values + ", " + index + ")"
	}
	else {
		this.pie = this.get() + ".pie(" + values + ")"
	}
}	


void d3lpie::endAngle(string scalar angle) { 
	if (angle != "") {
		this.pie = this.get() + ".endAngle(" + angle + ")"
	}
	else {
		this.pie = this.get() + ".endAngle()"
	}
}


void d3lpie::padAngle(string scalar angle) { 
	if (angle != "") {
		this.pie = this.get() + ".padAngle(" + angle + ")"
	}
	else {
		this.pie = this.get() + ".padAngle()"
	}
}


void d3lpie::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.pie = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.pie = this.get() + ".sort()"
	}
}	


void d3lpie::value(| string scalar value) {
	if (value != "") {
		this.pie = this.get() + ".value(" + value + ")"
	}
	else {
		this.pie = this.get() + ".value()"
	}
}


void d3lpie::startAngle(| string scalar angle) { 
	if (angle != "") {
		this.pie = this.get() + ".startAngle(" + angle + ")"
	}
	else {
		this.pie = this.get() + ".startAngle()"
	}
}


void d3lpie::value(| string scalar value) {
	if (value != "") {
		this.pie = this.get() + ".value(" + value + ")"
	}
	else {
		this.pie = this.get() + ".value()"
	}
}


end


