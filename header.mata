mata:

// Class used to initialize new file
class doc {

	void							setProps()
	private:		
	string			scalar			path, filename, ext, html, header, title, 
									body, libs, headscripts, footscripts, style
	public:
	string			scalar			getFile(), getHtml(), getHeader(), getTitle(), 
									getBody(), getLibs(), getHeadScripts(), 
									getFootScripts(), getStyle()
	
	real			scalar			fileh
	void							open(), setHtml(), setHeader(), setTitle(), 
									setBody(), setLibs(), setHeadScripts(), 
									setFootScripts(), setStyle(), printHead(), 
									addElement(), close()
									
}

// Sets file and path names...Also checks validity of file extension
void doc::setProps(string scalar fname) {
	string scalar path, fnm
	pathsplit(fname, path, fnm)
	
	if (pathsuffix(fnm) != ".html" & pathsuffix(fnm) != "") {
		_error(3498, "File name must have .html extension or no file extension")
	}
	else {
		this.path = path + "/"
		this.filename = subinstr(fnm, ".html", "")
		this.ext = ".html"
	}
	
	if (direxists(this.path) == 0) {
	
		mkdir(this.path, 1)
		
	}

}

// Accessor to get the fully qualified file name/path
string scalar doc::getFile() {
	return(this.path + this.filename + this.ext)
}


void doc::open(string scalar how) {

	if (how == "write" | how == "w") {
		this.fileh = fopen(this.getFile(), "w", 1)
	}
	else {
		this.fileh = fopen(this.getFile(), "a", 1)
	}
}

void doc::setHtml() {
	this.html = "<!DOCTYPE html><html>"
}

void doc::setHeader() {
	this.header = "<head>"
}
void doc::setTitle(string scalar pageTitle) {
	this.title = "<title>" + pageTitle + "</title>" 
}

void doc::setLibs(| string scalar lib, string rowvector libraries) {
	string scalar head
	if (lib == "") {
		head = `"<script src="//js.org/.v3.min.js" charset="utf-8"></script>"'
	}
	else {
		head = lib
	}
	if (length(libraries) >= 1) {
		real i
		for(i = 1; i <= length(libraries); i++) {
			head = head + `"<script src=""' + libraries[1, i] + `"" charset="utf-8"></script>"'
		}
	}
	this.libs = head
}

void doc::setHeadScripts(| string rowvector src) {
	string scalar hscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			hscript = hscript + `"<script src = ""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.headscripts = hscript
}


void doc::setFootScripts(| string rowvector src) {
	string scalar fscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			fscript = fscript + `"<script src = ""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.footscripts = fscript
}

void doc::setStyle(| string rowvector css) {
	string scalar stylesheets
	if (length(css) >= 1) {
		real i
		for(i = 1; i <= length(css); i++) {
			stylesheets = stylesheets + `"<link type="text/css" href=""' +      
										css + `"" rel="stylesheet" />"'
		}
	}
	this.style = stylesheets
}

void doc::setBody() {
	this.body = "</head><body>"
}

string scalar doc::getHtml() {
	return(this.html)
}
string scalar doc::getHeader() {
	return(this.header)
}
string scalar doc::getTitle() {
	return(this.title)
}
string scalar doc::getBody() {
	return(this.body)
}
string scalar doc::getLibs() {
	return(this.libs)
}
string scalar doc::getHeadScripts() {
	return(this.headscripts)
}
string scalar doc::getFootScripts() {
	return(this.footscripts)
}
string scalar doc::getStyle() {
	return(this.style)
}

void doc::printHead(real scalar fileHandle) {
	put(fileHandle, getHtml())
	put(fileHandle, getHeader())
	put(fileHandle, getTitle())
	put(fileHandle, getStyle())
	put(fileHandle, getLibs())
	put(fileHandle, getHeadScripts())
	put(fileHandle, getBody())
}


void doc::addElement(real scalar fileHandle, string scalar object) {
	put(fileHandle, object)
}

void doc::close(real scalar fileHandle) {
	put(fileHandle, "</body></html>")
	put(fileHandle, this.getFootScripts())
	fclose(fileHandle)
}

end
