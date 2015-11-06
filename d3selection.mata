mata: 

class d3selection { 
    private:
	string				scalar	selection
    
	public:
	void						new(), destroy(), init(), append(), attr(),
								call(), classed(), data(), datum(), each(),
								empty(), enter(), exit(), filter(), html(),
								insert(), interrupt(), node(), on(), order(),
								property(), remove(), select(), selectAll(),
								size(), sort(), style(), text(), transition()
    string				scalar	get(), complete()
}

string scalar d3selection::get() { 
    return(this.selection)
}

string scalar d3selection::complete() { 
    return(this.get() + ";")
}

void d3selection::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.selection = "var " + vnm + " = " + arguments
	}
	else {
		this.selection = vnm
	}
}

void d3selection::new() {
}

void d3selection::destroy() {
}

/** Operating on Selections **/
/*** Content ***/

void d3selection::attr(string scalar name, | string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".attr(" + name + ", " + value + ")"
	}
	else {
		this.selection = this.get() + ".attr(" + name + ")"
	}
}


void d3selection::classed(string scalar name, | string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".classed(" + name + ", " + value + ")"
	}
	else {
		this.selection = this.get() + ".classed(" + name + ")"
	}
}


void d3selection::style(string scalar name, | string scalar value, string scalar priority) { 
	if (value != "" & priority != "") {
		this.selection = this.get() + ".style(" + name + ", " + value + ", " + priority + ")"
	}
	else if (value != "" & priority == "") {
		this.selection = this.get() + ".style(" + name + ", " + value + ")"
	}
	else {
		this.selection = this.get() + ".style(" + name + ")"
	}
}


void d3selection::property(string scalar name, | string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".property(" + name + ", " + value + ")"
	}
	else {
		this.selection = this.get() + ".property(" + name + ")"
	}
}


void d3selection::text(| string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".text(" + value + ")"
	}
	else {
		this.selection = this.get() + ".text()"
	}
}


void d3selection::html(| string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".text(" + value + ")"
	}
	else {
		this.selection = this.get() + ".text()"
	}
}


void d3selection::append(string scalar name) { 
	this.selection = this.get() + ".append(" + name + ")"
}


void d3selection::insert(string scalar name, | string scalar before) { 
	if (before != "") {
		this.selection = this.get() + ".insert(" + name + ", " + before + ")"
    }
	else {
		this.selection = this.get() + ".insert(" + name + ")"
	}
}


void d3selection::remove() {
	this.selection = this.get() + ".remove()"
}


/*** Data ***/
void d3selection::data(| string scalar values, string scalar key) { 
	if (values != "" & key != "") {
		this.selection = this.get() + ".data(" + values + ", " + key + ")"
	}
	else if (values != "" & key == "") {
		this.selection = this.get() + ".data(" + values + ")"
	}
	else {
		this.selection = this.get() + ".data()"
	}
}


void d3selection::enter() { 
	this.selection = this.get() + ".enter()"
}


void d3selection::exit() { 
	this.selection = this.get() + ".exit()"
}


void d3selection::filter(string scalar selector) { 
	this.selection = this.get() + ".filter(" + selector + ")"
}



void d3selection::datum(| string scalar value) { 
	if (value != "") {
		this.selection = this.get() + ".datum(" + value + ")"
	}
	else {
		this.selection = this.get() + ".datum()"
	}
}


void d3selection::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.selection = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.selection = this.get() + ".sort()"
	}
}


void d3selection::order() { 
	this.selection = this.get() + ".order()"
}


/*** Animation and Interaction ***/
void d3selection::on(string scalar type, | string scalar listener, string scalar capture) { 
	if (listener != "" & capture != "") {
		this.selection = this.get() + ".on(" + type + ", " + listener + ", " + capture + ")"
	}
	else if (listener != "" & capture == "") {
		this.selection = this.get() + ".on(" + type + ", " + listener + ")"
	}
	else {
		this.selection = this.get() + ".on(" + type + ")"
	}	
}


void d3selection::transition(| string scalar name) { 
	if (name != "") {
		this.selection = this.get() + ".transition(" + name + ")"
	}
	else {
		this.selection = this.get() + ".transition()"
	}
}


void d3selection::interrupt(| string scalar name) { 
	if (name != "") {
		this.selection = this.get() + ".interrupt(" + name + ")"
	}
	else {
		this.selection = this.get() + ".interrupt()"
	}
}


/*** Subselections ***/
void d3selection::select(string scalar node) {
	this.selection = this.get() + ".select(" + node + ")" 
}


void d3selection::selectAll(string scalar selector) {
	this.selection = this.get() + ".selectAll(" + selector + ")" 
}


/*** Control ***/
void d3selection::each(string scalar func) { 
	this.selection = this.get() + ".each(" + func + ")"
}


void d3selection::call(string scalar func, | string scalar arguments) { 
	if (arguments != "") {
		this.selection = this.get() + ".call(" + func + ", " + arguments + ")"
	}
	else {
		this.selection = this.get() + ".call(" + func + ")"
	}
}


void d3selection::empty() { 
	this.selection = this.get() + ".empty()"
}


void d3selection::node() { 
	this.selection = this.get() + ".node()"
}


void d3selection::size() { 
	this.selection = this.get() + ".size()"
}



end


