mata:

// Class used to initialize new file
class filebase {

	void							setProps()
	private		string		scalar	path, filename, ext	
	public 		string		scalar	getFile()

}

// Sets file and path names...Also checks validity of file extension
void filebase::setProps(string scalar fname) {
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
string scalar filebase::getFile() {
	return(this.path + this.filename + this.ext)
}


// Child class of filebase used to write HTML header and set HTML metadata
class header extends filebase {

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

void header::open(string scalar how) {

	if (how == "write" | how == "w") {
		this.fileh = fopen(super.getFile(), "w", 1)
	}
	else {
		this.fileh = fopen(super.getFile(), "a", 1)
	}
}

void header::setHtml() {
	this.html = "<!DOCTYPE html><html>"
}

void header::setHeader() {
	this.header = "<head>"
}
void header::setTitle(string scalar pageTitle) {
	this.title = "<title>" + pageTitle + "</title>" 
}

void header::setLibs(| string scalar lib, string rowvector libraries) {
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

void header::setHeadScripts(| string rowvector src) {
	string scalar hscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			hscript = hscript + `"<script src""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.headscripts = hscript
}


void header::setFootScripts(| string rowvector src) {
	string scalar fscript
	if (length(src) >= 1) {
		real i
		for(i = 1; i <= length(src); i++) {
			fscript = fscript + `"<script src""' + src + `"" charset="utf-8"></script>"'
		}
	}
	this.footscripts = fscript
}

void header::setStyle(| string rowvector css) {
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

void header::setBody() {
	this.body = "</head><body>"
}

string scalar header::getHtml() {
	return(this.html)
}
string scalar header::getHeader() {
	return(this.header)
}
string scalar header::getTitle() {
	return(this.title)
}
string scalar header::getBody() {
	return(this.body)
}
string scalar header::getLibs() {
	return(this.libs)
}
string scalar header::getHeadScripts() {
	return(this.headscripts)
}
string scalar header::getFootScripts() {
	return(this.footscripts)
}
string scalar header::getStyle() {
	return(this.style)
}

void header::printHead(real scalar fileHandle) {
	put(fileHandle, getHtml())
	put(fileHandle, getHeader())
	put(fileHandle, getTitle())
	put(fileHandle, getStyle())
	put(fileHandle, getLibs())
	put(fileHandle, getHeadScripts())
	put(fileHandle, getBody())
}

// Grandchild class of filebase.  Used to add D3 objects to the HTML file and 
// to add closing tags/scripts to the file before closing it.
class doc extends header {
	public		void				addElement(), close()	
}

void doc::addElement(real scalar fileHandle, string scalar object) {
	put(fileHandle, object)
}

void doc::close(real scalar fileHandle) {
	put(fileHandle, "</body></html>")
	put(fileHandle, super.getFootScripts())
	fclose(fileHandle)
}

end
