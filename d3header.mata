mata:

// Class used to initialize new file
class d3filebase {

	void							setProps()
	private		string		scalar	d3path, d3filename, d3ext	
	public 		string		scalar	getFile()

}

// Sets file and path names...Also checks validity of file extension
void d3filebase::setProps(string scalar filename) {

	pathsplit(filename, d3path, d3filename)
	
	if (pathsuffix(this.d3filename) != ".html" | pathsuffix(this.d3filename) != "") {
		_error(3498, "File name must have .html extension or no file extension")
	}
	else {
		this.d3ext = ".html"
	}
	
	if (direxists(this.d3path) == 0) {
	
		mkdir(this.d3path, 1)
		
	}

}

// Accessor to get the fully qualified file name/path
string scalar d3filebase::getFile() {
	return(this.d3path + this.d3filename + this.d3ext)
}


// Child class of d3filebase used to write HTML header and set HTML metadata
class d3header extends d3filebase {

	public 		real		scalar	fileh
	private		string		scalar	html, header, title, body, libs, 
									headscripts, footscripts, style
	public		void				open(), setHtml(), setHeader(), setTitle(), 
									setBody(), setLibs(), setHeadScripts(), 
									setFootScripts(), setStyle(), printHead()
	public		string		scalar 	getHtml(), getHeader(), getTitle(), 
									getBody(), getLibs(), getHeadScripts(), 
									getFootScripts(), getStyle()
}

void d3header::open(string scalar how) {

	if (how == "write" | how == "w") {
		this.fileh = fopen(super.getFile(), "w", 1)
	}
	else {
		this.fileh = fopen(super.getFile(), "a", 1)
	}
}

void d3header::setHtml() {
	this.html = "<!DOCTYPE html><html>"
}

void d3header::setHeader() {
	this.header = "<head>"
}
void d3header::setTitle(string scalar pageTitle) {
	this.title = "<title>" + pageTitle + "</title>" 
}

void d3header::setLibs(| string scalar d3lib, string rowvector libraries) {
	string scalar head
	if (d3lib == "") {
		head = `"<script src="//d3js.org/d3.v3.min.js" charset="utf-8"></script>"'
	}
	else {
		head = d3lib
	}
	if (length(libraries) >= 1) {
		real i
		for(i = 1; i <= length(libraries); i++) {
			head = head + `"<script src=""' + libraries[1, i] + `"" charset="utf-8"></script>"'
		}
	}
	this.libs = head
}

void d3header::setHeadScripts(| string rowvector src) {
	string scalar hscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			hscript = hscript + `"<script src""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.headscripts = hscript
}


void d3header::setFootScripts(| string rowvector src) {
	string scalar fscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			fscript = fscript + `"<script src""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.footscripts = fscript
}

void d3header::setStyle(| string rowvector css) {
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

void d3header::setBody() {
	this.body = "</head><body>"
}

string scalar d3header::getHtml() {
	return(this.html)
}
string scalar d3header::getHeader() {
	return(this.header)
}
string scalar d3header::getTitle() {
	return(this.title)
}
string scalar d3header::getBody() {
	return(this.body)
}
string scalar d3header::getLibs() {
	return(this.libs)
}
string scalar d3header::getHeadScripts() {
	return(this.headscripts)
}
string scalar d3header::getFootScripts() {
	return(this.footscripts)
}
string scalar d3header::getStyle() {
	return(this.style)
}

void d3header::printHead(real scalar fileHandle) {
	put(fileHandle, getHtml())
	put(fileHandle, getHeader())
	put(fileHandle, getTitle())
	put(fileHandle, getStyle())
	put(fileHandle, getLibs())
	put(fileHandle, getHeadScripts())
	put(fileHandle, getBody())
}

// Grandchild class of d3filebase.  Used to add D3 objects to the HTML file and 
// to add closing tags/scripts to the file before closing it.
class d3doc extends d3header {
	public		void				addD3Element(), close()	
}

void d3doc::addD3Element(real scalar fileHandle, string scalar d3object) {
	put(fileHandle, d3object)
}

void d3doc::close(real scalar fileHandle) {
	put(fileHandle, "</body></html>")
	put(fileHandle, super.getFootScripts())
	fclose(fileHandle)
}

end
