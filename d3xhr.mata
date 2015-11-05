mata: 

class d3xhr { 

    private   string  scalar    xhr
    void                        new(), destroy(), init()
    public    string  scalar    getter()
    public    string  scalar    complete() 
    void                        abort() 
    void                        header() 
	void						get()
    void                        mimeType() 
    void                        on() 
    void                        post() 
    void                        response() 
    void                        responseType() 
    void                        send() 

}

string scalar d3xhr::getter() { 
    return(this.xhr)
}

string scalar d3xhr::complete() { 
    string scalar xhrObject 
    xhrObject = this.get() + ";"
    return(xhrObject)
}

void d3xhr::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.xhr = "var " + vnm + " = " + arguments
	}
	else {
		this.xhr = vnm
	}	
}


void d3xhr::new() {
}


void d3xhr::destroy() {
}


void d3xhr::header(string scalar name, | string scalar value) { 
	if (value != "") {
		this.xhr = this.getter() + ".header(" + name + ", " + value + ")"
	}
	else {
		this.xhr = this.getter() + ".header(" + name + ")"
	}
}


void d3xhr::mimeType(| string scalar type) { 
	if (type != "") {
		this.xhr = this.getter() + ".mimeType(" + type + ")"
	}
	else {
		this.xhr = this.getter() + ".mimeType()"
	}
}


void d3xhr::responseType(string scalar type) { 
	this.xhr = this.getter() + ".responseType(" + type + ")"
}


void d3xhr::response(string scalar value) { 
	this.xhr = this.getter() + ".response(" + value + ")"
}


void d3xhr::get(| string scalar callback) { 
	if (callback != "") {
		this.xhr = this.getter() + ".get(" + callback + ")"
	}
	else {
		this.xhr = this.getter() + ".get()"
	}
}


void d3xhr::post(| string scalar data, string scalar callback) { 
	if (data != "" & callback != "") {
		this.xhr = this.getter() + ".post(" + data + ", " + callback + ")"
	}
	else if (data != "" & callback == "") {
		this.xhr = this.getter() + ".post(" + data + ")"
	}
	else {
		this.xhr = this.getter() + ".post()"
	}
}


void d3xhr::send(string scalar method, | string scalar data, string scalar callback) { 
	if (data != "" & callback != "") {
		this.xhr = this.getter() + ".send(" + method + ", " + data + ", " + callback + ")"
	}
	else if (data != "" & callback == "") {
		this.xhr = this.getter() + ".send(" + method + ", " + data + ")"
	}
	else {
		this.xhr = this.getter() + ".send(" + method + ")"
	}
}


void d3xhr::abort() { 
    this.xhr = this.getter() + ".abort()"
}


void d3xhr::on(string scalar type, | string scalar listener) { 
	if (listener != "") {
		this.xhr = this.getter() + ".on(" + type + ", " + listener + ")"
	}
	else {
		this.xhr = this.getter() + ".on(" + type + ")"
	}
}

end


