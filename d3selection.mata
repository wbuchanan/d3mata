mata: 

class d3selection { 

    private   string  scalar    selection
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        append() 
    void                        attr() 
    void                        call() 
    void                        classed() 
    void                        data() 
    void                        datum() 
    void                        each() 
    void                        empty() 
    void                        enter() 
    void                        exit() 
    void                        filter() 
    void                        html() 
    void                        insert() 
    void                        interrupt() 
    void                        node() 
    void                        on() 
    void                        order() 
    void                        property() 
    void                        remove() 
    void                        select() 
    void                        selectAll() 
    void                        size() 
    void                        sort() 
    void                        style() 
    void                        text() 
    void                        transition() 

}

string scalar d3selection::get() { 
    return(this.selection)
}

string scalar d3selection::complete() { 
    string scalar selectionObject 
    selectionObject = this.get() + ";"
    return(selectionObject)
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

/** Operating on Selections **/
/*** Content ***/

void d3selection::attr(string scalar name, | string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".attr(" + name + ", " + value + ")"
	}
	else {
		s = this.get() + ".attr(" + name + ")"
	}
    this.selection = s
}


void d3selection::classed(string scalar name, | string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".classed(" + name + ", " + value + ")"
	}
	else {
		s = this.get() + ".classed(" + name + ")"
	}
    this.selection = s
}


void d3selection::style(string scalar name, | string scalar value, string scalar priority) { 
    string scalar s 
	if (value != "" & priority != "") {
		s = this.get() + ".style(" + name + ", " + value + ", " + priority + ")"
	}
	else if (value != "" & priority == "") {
		s = this.get() + ".style(" + name + ", " + value + ")"
	}
	else {
		s = this.get() + ".style(" + name + ")"
	}
    this.selection = s
}


void d3selection::property(string scalar name, | string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".property(" + name + ", " + value + ")"
	}
	else {
		s = this.get() + ".property(" + name + ")"
	}
    this.selection = s
}


void d3selection::text(| string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".text(" + value + ")"
	}
	else {
		s = this.get() + ".text()"
	}
    this.selection = s
}


void d3selection::html(| string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".text(" + value + ")"
	}
	else {
		s = this.get() + ".text()"
	}
    this.selection = s
}


void d3selection::append(string scalar name) { 
    string scalar s 
    s = this.get() + ".append(" + name + ")"
    this.selection = s
}


void d3selection::insert(string scalar name, | string scalar before) { 
    string scalar s 
	if (before != "") {
		s = this.get() + ".insert(" + name + ", " + before + ")"
    }
	else {
		s = this.get() + ".insert(" + name + ")"
	}
	this.selection = s
}


void d3selection::remove() { 
    string scalar s 
    s = this.get() + ".remove()"
    this.selection = s
}


/*** Data ***/
void d3selection::data(| string scalar values, string scalar key) { 
    string scalar s 
	if (values != "" & key != "") {
		s = this.get() + ".data(" + values + ", " + key + ")"
	}
	else if (values != "" & key == "") {
		s = this.get() + ".data(" + values + ")"
	}
	else {
		s = this.get() + ".data()"
	}
    this.selection = s
}


void d3selection::enter() { 
    string scalar s 
    s = this.get() + ".enter()"
    this.selection = s
}


void d3selection::exit() { 
    string scalar s 
    s = this.get() + ".exit()"
    this.selection = s
}


void d3selection::filter(string scalar selector) { 
    string scalar s 
    s = this.get() + ".filter(" + selector + ")"
    this.selection = s
}



void d3selection::datum(| string scalar value) { 
    string scalar s 
	if (value != "") {
		s = this.get() + ".datum(" + value + ")"
	}
	else {
		s = this.get() + ".datum()"
	}
    this.selection = s
}


void d3selection::sort(| string scalar comparator) { 
    string scalar s 
	if (comparator != "") {
		s = this.get() + ".sort(" + comparator + ")"
	}
	else {
		s = this.get() + ".sort()"
	}
    this.selection = s
}


void d3selection::order() { 
    string scalar s 
    s = this.get() + ".order()"
    this.selection = s
}


/*** Animation and Interaction ***/
void d3selection::on(string scalar type, | string scalar listener, string scalar capture) { 
    string scalar s 
	if (listener != "" & capture != "") {
		s = this.get() + ".on(" + type + ", " + listener + ", " + capture + ")"
	}
	else if (listener != "" & capture == "") {
		s = this.get() + ".on(" + type + ", " + listener + ")"
	}
	else {
		s = this.get() + ".on(" + type + ")"
	}	
    this.selection = s
}


void d3selection::transition(| string scalar name) { 
    string scalar s 
	if (name != "") {
		s = this.get() + ".transition(" + name + ")"
	}
	else {
		s = this.get() + ".transition()"
	}
    this.selection = s
}


void d3selection::interrupt(| string scalar name) { 
    string scalar s 
	if (name != "") {
		s = this.get() + ".interrupt(" + name + ")"
	}
	else {
		s = this.get() + ".interrupt()"
	}
    this.selection = s
}


/*** Subselections ***/
void d3selection::select(string scalar node) {
        string scalar Select
        Select = this.get() + ".select(" + node + ")" 
        this.selection = Select
}


void d3selection::selectAll(string scalar selector) {
        string scalar Selectall
        Selectall = this.get() + ".selectAll(" + selector + ")" 
        this.selection = Selectall
}


/*** Control ***/
void d3selection::each(string scalar func) { 
    string scalar s 
    s = this.get() + ".each(" + func + ")"
    this.selection = s
}


void d3selection::call(string scalar func, | string scalar arguments) { 
    string scalar s 
	if (arguments != "") {
		s = this.get() + ".call(" + func + ", " + arguments + ")"
	}
	else {
		s = this.get() + ".call(" + func + ")"
	}
    this.selection = s
}


void d3selection::empty() { 
    string scalar s 
    s = this.get() + ".empty()"
    this.selection = s
}


void d3selection::node() { 
    string scalar s 
    s = this.get() + ".node()"
    this.selection = s
}


void d3selection::size() { 
    string scalar s 
    s = this.get() + ".size()"
    this.selection = s
}



end


