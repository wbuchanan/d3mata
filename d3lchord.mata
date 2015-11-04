mata: 

class d3lchord { 
    private   string  scalar    chord
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void					    matrx() 
    void					    padding() 
    void					    sortGroups() 
    void					    sortSubgroups() 
    void					    sortChords() 
    void					    chords() 
    void					    groups() 
}

string scalar d3lchord::get() { 
    return(this.chord)
}

string scalar d3lchord::complete() { 
    string scalar chordObject 
    chordObject = this.get() + ";"
    return(chordObject)
}

void d3lchord::new() {
}

void d3lchord::destroy() {
}

void d3lchord::init(string scalar vnm, string scalar arguments) { 
    this.chord = "var " + vnm + " = " + arguments
}


void d3lchord::matrx(| string scalar matrx) {
	if (matrx != "") {
		this.chord = this.get() + ".matrix(" + matrx + ")"
	}
	else {
		this.chord = this.get() + ".matrix()"
	}
}


void d3lchord::padding(| string scalar padding) {
	if (padding != "") {
		this.chord = this.get() + ".padding(" + padding + ")"
	}
	else {
		this.chord = this.get() + ".padding()"
	}
}


void d3lchord::sortGroups(| string scalar comparator) {
	if (comparator != "") {
		this.chord = this.get() + ".sortGroups(" + comparator + ")"
	}
	else {
		this.chord = this.get() + ".sortGroups()"
	}
}


void d3lchord::sortSubgroups(| string scalar comparator) {
	if (comparator != "") {
		this.chord = this.get() + ".sortSubgroups(" + comparator + ")"
	}
	else {
		this.chord = this.get() + ".sortSubgroups()"
	}
}


void d3lchord::sortChords(| string scalar comparator) {
	if (comparator != "") {
		this.chord = this.get() + ".sortChords(" + comparator + ")"
	}
	else {
		this.chord = this.get() + ".sortChords()"
	}
}


void d3lchord::chords() {
    this.chord = this.get() + ".chords()"
}


void d3lchord::groups() {
    this.chord = this.get() + ".groups()"
}


end


