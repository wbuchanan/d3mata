mata: 

class d3transition { 

    private   string  scalar    transition
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        attr() 
    void                        attrTween() 
    void                        call() 
    void                        delay() 
    void                        duration() 
    void                        each() 
    void                        ease() 
    void                        empty() 
    void                        filter() 
    void                        node() 
    void                        remove() 
    void                        select() 
    void                        selectAll() 
    void                        size() 
    void                        style() 
    void                        styleTween() 
    void                        text() 
    void                        transition() 
    void                        tween() 

}

string scalar d3transition::get() { 
    return(this.transition)
}

string scalar d3transition::complete() { 
    string scalar transitionObject 
    transitionObject = this.get() + ";"
    return(transitionObject)
}

void d3transition::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.transition = "var " + vnm + " = " + arguments
	}
	else {
		this.transition = vnm
	}	
}

void d3transition::new() {
}


void d3transition::destroy() {
}


/* Starting Transitions */
void d3transition::delay(| string scalar delay) { 
	if (delay != "") {
		this.transition = this.get() + ".delay(" + delay + ")"
	}
	else {
		this.transition = this.get() + ".delay()"
	}
}

void d3transition::duration(| string scalar duration) { 
	if (duration != "") {
		this.transition = this.get() + ".duration(" + duration + ")"
	}
	else {
		this.transition = this.get() + ".duration()"
	}
}

void d3transition::ease(| string scalar value, string scalar arguments) { 
	if (value != "" & arguments != "") {
		this.transition = this.get() + ".ease(" + value + ", " + arguments + ")"
	}
	else if (value != "") {
		this.transition = this.get() + ".ease(" + value + ")"
	}
	else {
		this.transition = this.get() + ".ease()"
	}
}

/* Operating on Transitions */
/** Content **/
void d3transition::attr(string scalar name, string scalar value) { 
	this.transition = this.get() + ".attr(" + name + ", " + value + ")"
}


void d3transition::attrTween(string scalar name, string scalar tween) { 
	this.transition = this.get() + ".attrTween(" + name + ", " + tween + ")"
}


void d3transition::style(string scalar name, string scalar value, | 		 ///   
						 string scalar priority) { 
	if (priority != "") {
		this.transition = this.get() + ".style(" + name + ", " + value + ", " + priority + ")"
	}
	else {
		this.transition = this.get() + ".style(" + name + ", " + value + ")"
	}
}


void d3transition::styleTween(string scalar name, string scalar tween, |	 ///   
							  string scalar priority) { 
	if (priority != "") {
		this.transition = this.get() + ".styleTween(" + name + ", " + tween + ", " + priority + ")"
	}
	else {
		this.transition = this.get() + ".styleTween(" + name + ", " + tween + ")"
	}
}


void d3transition::text(string scalar value) { 
	this.transition = this.get() + ".text(" + value + ")"
}


void d3transition::tween(string scalar name, string scalar factory) { 
	this.transition = this.get() + ".tween(" + name + ", " + factory + ")"
}


void d3transition::remove() { 
	this.transition = this.get() + ".remove()"
}


/** Subtransitions **/
void d3transition::select(string scalar selector) { 
	this.transition = this.get() + ".select(" + selector + ")"
}


void d3transition::selectAll(string scalar selector) { 
	this.transition = this.get() + ".selectAll(" + selector + ")"
}


void d3transition::filter(string scalar selector) { 
	this.transition = this.get() + ".filter(" + selector + ")"
}


void d3transition::transition() { 
	this.transition = this.get() + ".transition()"
}


/** Control **/
void d3transition::each(| string scalar type, string scalar listener) { 
	if (type != "" & listener != "") {
		this.transition = this.get() + ".each(" + type + ", " + listener + ")"
	}
	else if (type != "") {
		this.transition = this.get() + ".each(" + type + ")"
	}
	else {
		this.transition = this.get() + ".each()"
	}
}


void d3transition::call(string scalar func, string scalar arguments) { 
	if (arguments != "") {
		this.transition = this.get() + ".call(" + func + ", " + arguments + ")"
    }
	else {
		this.transition = this.get() + ".call(" + func + ")"
	}
}


void d3transition::empty() { 
	this.transition = this.get() + ".empty()"
}


void d3transition::node() { 
	this.transition = this.get() + ".node()"
}


void d3transition::size() { 
	this.transition = this.get() + ".size()"
}


end


