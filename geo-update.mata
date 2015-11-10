mata: 

class geo {

	private: 
	string		scalar		geo, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void					albers(), albersUsa(), angle(), area(), 
							azimuthalEqualArea(), azimuthalEquidistant(), 
							bounds(), center(), centroid(), circle(), 
							clipAngle(), clipExtent(), conicConformal(), 
							conicEqualArea(), conicEquidistant(), context(), 
							distance(), equirectangular(), extent(), gnomonic(), 
							graticule(), interpolate(), invert(), length(), 
							lineEnd(), lineStart(), lines(), majorExtent(), 
							majorStep(), mercator(), minorExtent(), minorStep(), 
							origin(), orthographic(), outline(), parallels(), 
							path(), point(), pointRadius(), polygonEnd(), 
							polygonStart(), precision(), projection(), 
							projectionMutator(), raw(), rotate(), rotation(), 
							scale(), sphere(), step(), stereographic(), 
							stream(), transform(), translate(), 
							transverseMercator(), init()

}

void geo::init(string scalar vnm) {
     this.varnm = vnm 
     this.geo = "var " + vnm + " = d3.geo"
     this.current = "var " + vnm + " = d3.geo"
     this.prev = ""
}

string scalar geo::get() {
     return(this.current) 
}

string scalar geo::complete() {
     return(this.current + ";") 
}

string scalar geo::getVarnm() {
     return(this.varnm) 
}

string scalar geo::undo() {
	this.current = this.prev
    return(this.current) 
}

void geo::albers() { 
	this.prev = this.get()
	this.current = this.get() + ".albers()" 
}

void geo::albersUsa() { 
	this.prev = this.get()
	this.current = this.get() + ".albersUsa()" 
}

void geo::angle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".angle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".angle()" 
	}
}

void geo::area(string scalar feature) { 
	this.prev = this.get()
	this.current = this.get() + ".area(" + feature + ")" 
}

void geo::azimuthalEqualArea() { 
	this.prev = this.get()
	this.current = this.get() + ".azimuthalEqualArea()" 
}

void geo::azimuthalEquidistant() { 
	this.prev = this.get()
	this.current = this.get() + ".azimuthalEquidistant()" 
}

void geo::bounds(string scalar feature) { 
	this.prev = this.get()
	this.current = this.get() + ".bounds(" + feature + ")" 
}

void geo::center(| string scalar location) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".center(" + location + ")" 
	}
	else {
		this.current = this.get() + ".center()" 
	}
}

void geo::centroid(string scalar feature) { 
	this.prev = this.get()
	this.current = this.get() + ".centroid(" + feature + ")" 
}

void geo::circle(string scalar arguments) { 
	this.prev = this.get()
	this.current = this.get() + ".circle(" + arguments + ")" 
}

void geo::clipAngle(string scalar angle) { 
	this.prev = this.get()
	this.current = this.get() + ".clipAngle(" + angle + ")" 
}

void geo::clipExtent(| string scalar extent) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".clipExtent(" + extent + ")" 
	}
	else {
		this.current = this.get() + ".clipExtent()" 
	}
}

void geo::conicConformal() { 
	this.prev = this.get()
	this.current = this.get() + ".conicConformal()" 
}

void geo::conicEqualArea() { 
	this.prev = this.get()
	this.current = this.get() + ".conicEqualArea()" 
}

void geo::conicEquidistant() { 
	this.prev = this.get()
	this.current = this.get() + ".conicEquidistant()" 
}

void geo::context(| string scalar context) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".context(" + context + ")" 
	}
	else {
		this.current = this.get() + ".context()" 
	}
}

void geo::distance(string scalar a, string scalar b) { 
	this.prev = this.get()
	this.current = this.get() + ".distance(" + a + ", " + b + ")" 
}

void geo::equirectangular() { 
	this.prev = this.get()
	this.current = this.get() + ".equirectangular()" 
}

void geo::extent(| string scalar extent) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".extent(" + extent + ")" 
	}
	else {
		this.current = this.get() + ".extent()" 
	}
}

void geo::gnomonic() { 
	this.prev = this.get()
	this.current = this.get() + ".gnomonic()" 
}

void geo::graticule() { 
	this.prev = this.get()
	this.current = this.get() + ".graticule()" 
}

void geo::interpolate(string scalar a, string scalar b) { 
	this.prev = this.get()
	this.current = this.get() + ".interpolate(" + a + ", " + b + ")" 
}

void geo::invert(string scalar point) { 
	this.prev = this.get()
	this.current = this.get() + ".invert(" + point + ")" 
}

void geo::length(string scalar feature) { 
	this.prev = this.get()
	this.current = this.get() + ".length(" + feature + ")" 
}

void geo::lineEnd() { 
	this.prev = this.get()
	this.current = this.get() + ".lineEnd()" 
}

void geo::lineStart() { 
	this.prev = this.get()
	this.current = this.get() + ".lineStart()" 
}

void geo::lines() { 
	this.prev = this.get()
	this.current = this.get() + ".lines()" 
}

void geo::majorExtent(string scalar extent) { 
	this.prev = this.get()
	this.current = this.get() + ".majorExtent(" + extent + ")" 
}

void geo::majorStep(string scalar step) { 
	this.prev = this.get()
	this.current = this.get() + ".majorStep(" + step + ")" 
}

void geo::mercator() { 
	this.prev = this.get()
	this.current = this.get() + ".mercator()" 
}

void geo::minorExtent(string scalar extent) { 
	this.prev = this.get()
	this.current = this.get() + ".minorExtent(" + extent + ")" 
}

void geo::minorStep(string scalar step) { 
	this.prev = this.get()
	this.current = this.get() + ".minorStep(" + step + ")" 
}

void geo::origin(| string scalar origin) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".origin(" + origin + ")" 
	}
	else {
		this.current = this.get() + ".origin()" 
	}
}

void geo::orthographic() { 
	this.prev = this.get()
	this.current = this.get() + ".orthographic()" 
}

void geo::outline() { 
	this.prev = this.get()
	this.current = this.get() + ".outline()" 
}

void geo::parallels(| string scalar parallels) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".parallels(" + parallels + ")" 
	}
	else {
		this.current = this.get() + ".parallels()" 
	}
}

void geo::path(| string scalar feature, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".path(" + feature + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".path(" + feature + ")" 
	}
	else {
		this.current = this.get() + ".path()" 
	}
}

void geo::point(string scalar x, string scalar y, | string scalar z) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".point(" + x + ", " + y + ", " + z + ")" 
	}
	else {
		this.current = this.get() + ".point(" + x + ", " + y + ")" 
	}
}

void geo::pointRadius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".pointRadius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".pointRadius()" 
	}
}

void geo::polygonEnd() { 
	this.prev = this.get()
	this.current = this.get() + ".polygonEnd()" 
}

void geo::polygonStart() { 
	this.prev = this.get()
	this.current = this.get() + ".polygonStart()" 
}

void geo::precision(| string scalar precision) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".precision(" + precision + ")" 
	}
	else {
		this.current = this.get() + ".precision()" 
	}
}

void geo::projection(| string scalar projection) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".projection(" + projection + ")" 
	}
	else {
		this.current = this.get() + ".projection()" 
	}
}

void geo::projectionMutator(string scalar rawFactory) { 
	this.prev = this.get()
	this.current = this.get() + ".projectionMutator(" + rawFactory + ")" 
}

void geo::raw(string scalar psi0, string scalar psi1) { 
	this.prev = this.get()
	this.current = this.get() + ".raw(" + psi0 + ", " + psi1 + ")" 
}

void geo::rotate(| string scalar rotation) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".rotate(" + rotation + ")" 
	}
	else {
		this.current = this.get() + ".rotate()" 
	}
}

void geo::rotation(string scalar rotate) { 
	this.prev = this.get()
	this.current = this.get() + ".rotation(" + rotate + ")" 
}

void geo::scale(| string scalar scale) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scale(" + scale + ")" 
	}
	else {
		this.current = this.get() + ".scale()" 
	}
}

void geo::sphere() { 
	this.prev = this.get()
	this.current = this.get() + ".sphere()" 
}

void geo::step(string scalar step) { 
	this.prev = this.get()
	this.current = this.get() + ".step(" + step + ")" 
}

void geo::stereographic() { 
	this.prev = this.get()
	this.current = this.get() + ".stereographic()" 
}

void geo::stream(string scalar object, |string scalar listener) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".stream(" + object + ", " + listener + ")" 
	}
	else {
		this.current = this.get() + ".stream(" + object + ")" 
	}
}

void geo::transform(string scalar methods) { 
	this.prev = this.get()
	this.current = this.get() + ".transform(" + methods + ")" 
}

void geo::translate(| string scalar point) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".translate(" + point + ")" 
	}
	else {
		this.current = this.get() + ".translate()" 
	}
}

void geo::transverseMercator() { 
	this.prev = this.get()
	this.current = this.get() + ".transverseMercator()" 
}

mata mlib add libd3 geo(), complete 


end 


