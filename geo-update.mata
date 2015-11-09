mata: 

mata clear

class geo {

private: 
string scalar geo, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void albers()
void albersUsa()
void angle()
void area()
void azimuthalEqualArea()
void azimuthalEquidistant()
void bounds()
void center()
void centroid()
void circle()
void clipAngle()
void clipExtent()
void conicConformal()
void conicEqualArea()
void conicEquidistant()
void context()
void distance()
void equirectangular()
void extent()
void gnomonic()
void graticule()
void interpolate()
void invert()
void length()
void lineEnd()
void lineStart()
void lines()
void majorExtent()
void majorStep()
void mercator()
void minorExtent()
void minorStep()
void origin()
void orthographic()
void outline()
void parallels()
void path()
void point()
void pointRadius()
void polygonEnd()
void polygonStart()
void precision()
void projection()
void projectionMutator()
void raw()
void rotate()
void rotation()
void scale()
void sphere()
void step()
void stereographic()
void stream()
void transform()
void translate()
void transverseMercator()
}

void geo::init(string scalar vnm) {
     this.varnm = vnm 
     this.geo = "var " + vnm + " = geo
     this.current = "var " + vnm + " = geo
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

string scalar geo::recover() {
     return(this.prev) 
}

void geo::albers() { this.prev = this.get(); this.current = this.get() + ".albers(" + args + ")" }

void geo::albersUsa() { this.prev = this.get(); this.current = this.get() + ".albersUsa(" + args + ")" }

void geo::angle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".angle(" + args + ")" }

void geo::area(string scalar feature) { this.prev = this.get(); this.current = this.get() + ".area(" + args + ")" }

void geo::azimuthalEqualArea() { this.prev = this.get(); this.current = this.get() + ".azimuthalEqualArea(" + args + ")" }

void geo::azimuthalEquidistant() { this.prev = this.get(); this.current = this.get() + ".azimuthalEquidistant(" + args + ")" }

void geo::bounds(string scalar feature) { this.prev = this.get(); this.current = this.get() + ".bounds(" + args + ")" }

void geo::center(| string scalar location) { this.prev = this.get(); this.current = this.get() + ".center(" + args + ")" }

void geo::centroid(string scalar feature) { this.prev = this.get(); this.current = this.get() + ".centroid(" + args + ")" }

void geo::circle(string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".circle(" + args + ")" }

void geo::clipAngle(string scalar angle) { this.prev = this.get(); this.current = this.get() + ".clipAngle(" + args + ")" }

void geo::clipExtent() { this.prev = this.get(); this.current = this.get() + ".clipExtent(" + args + ")" }

void geo::clipExtent(string scalar extent) { this.prev = this.get(); this.current = this.get() + ".clipExtent(" + args + ")" }

void geo::conicConformal() { this.prev = this.get(); this.current = this.get() + ".conicConformal(" + args + ")" }

void geo::conicEqualArea() { this.prev = this.get(); this.current = this.get() + ".conicEqualArea(" + args + ")" }

void geo::conicEquidistant() { this.prev = this.get(); this.current = this.get() + ".conicEquidistant(" + args + ")" }

void geo::context(| string scalar context) { this.prev = this.get(); this.current = this.get() + ".context(" + args + ")" }

void geo::distance(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".distance(" + args + ")" }

void geo::equirectangular() { this.prev = this.get(); this.current = this.get() + ".equirectangular(" + args + ")" }

void geo::extent(string scalar extent) { this.prev = this.get(); this.current = this.get() + ".extent(" + args + ")" }

void geo::extent(| string scalar extent) { this.prev = this.get(); this.current = this.get() + ".extent(" + args + ")" }

void geo::gnomonic() { this.prev = this.get(); this.current = this.get() + ".gnomonic(" + args + ")" }

void geo::graticule() { this.prev = this.get(); this.current = this.get() + ".graticule(" + args + ")" }

void geo::interpolate(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void geo::invert(string scalar location) { this.prev = this.get(); this.current = this.get() + ".invert(" + args + ")" }

void geo::invert(string scalar point) { this.prev = this.get(); this.current = this.get() + ".invert(" + args + ")" }

void geo::length(string scalar feature) { this.prev = this.get(); this.current = this.get() + ".length(" + args + ")" }

void geo::lineEnd() { this.prev = this.get(); this.current = this.get() + ".lineEnd(" + args + ")" }

void geo::lineStart() { this.prev = this.get(); this.current = this.get() + ".lineStart(" + args + ")" }

void geo::lines() { this.prev = this.get(); this.current = this.get() + ".lines(" + args + ")" }

void geo::majorExtent(string scalar extent) { this.prev = this.get(); this.current = this.get() + ".majorExtent(" + args + ")" }

void geo::majorStep(string scalar step) { this.prev = this.get(); this.current = this.get() + ".majorStep(" + args + ")" }

void geo::mercator() { this.prev = this.get(); this.current = this.get() + ".mercator(" + args + ")" }

void geo::minorExtent(string scalar extent) { this.prev = this.get(); this.current = this.get() + ".minorExtent(" + args + ")" }

void geo::minorStep(string scalar step) { this.prev = this.get(); this.current = this.get() + ".minorStep(" + args + ")" }

void geo::origin(| string scalar origin) { this.prev = this.get(); this.current = this.get() + ".origin(" + args + ")" }

void geo::orthographic() { this.prev = this.get(); this.current = this.get() + ".orthographic(" + args + ")" }

void geo::outline() { this.prev = this.get(); this.current = this.get() + ".outline(" + args + ")" }

void geo::parallels(| string scalar parallels) { this.prev = this.get(); this.current = this.get() + ".parallels(" + args + ")" }

void geo::path() { this.prev = this.get(); this.current = this.get() + ".path(" + args + ")" }

void geo::path(string scalar feature, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".path(" + args + ")" }

void geo::point(string scalar x, string scalar y, | string scalar z) { this.prev = this.get(); this.current = this.get() + ".point(" + args + ")" }

void geo::pointRadius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".pointRadius(" + args + ")" }

void geo::polygonEnd() { this.prev = this.get(); this.current = this.get() + ".polygonEnd(" + args + ")" }

void geo::polygonStart() { this.prev = this.get(); this.current = this.get() + ".polygonStart(" + args + ")" }

void geo::precision(string scalar precision) { this.prev = this.get(); this.current = this.get() + ".precision(" + args + ")" }

void geo::precision(| string scalar precision) { this.prev = this.get(); this.current = this.get() + ".precision(" + args + ")" }

void geo::projection(string scalar location) { this.prev = this.get(); this.current = this.get() + ".projection(" + args + ")" }

void geo::projection(string scalar raw) { this.prev = this.get(); this.current = this.get() + ".projection(" + args + ")" }

void geo::projection(| string scalar projection) { this.prev = this.get(); this.current = this.get() + ".projection(" + args + ")" }

void geo::projectionMutator(string scalar rawFactory) { this.prev = this.get(); this.current = this.get() + ".projectionMutator(" + args + ")" }

void geo::raw(string scalar psi0, string scalar psi1) { this.prev = this.get(); this.current = this.get() + ".raw(" + args + ")" }

void geo::rotate(| string scalar rotation) { this.prev = this.get(); this.current = this.get() + ".rotate(" + args + ")" }

void geo::rotation(string scalar location) { this.prev = this.get(); this.current = this.get() + ".rotation(" + args + ")" }

void geo::rotation(string scalar rotate) { this.prev = this.get(); this.current = this.get() + ".rotation(" + args + ")" }

void geo::scale(| string scalar scale) { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void geo::sphere() { this.prev = this.get(); this.current = this.get() + ".sphere(" + args + ")" }

void geo::step(string scalar step) { this.prev = this.get(); this.current = this.get() + ".step(" + args + ")" }

void geo::stereographic() { this.prev = this.get(); this.current = this.get() + ".stereographic(" + args + ")" }

void geo::stream(string scalar listener) { this.prev = this.get(); this.current = this.get() + ".stream(" + args + ")" }

void geo::stream(string scalar object, string scalar listener) { this.prev = this.get(); this.current = this.get() + ".stream(" + args + ")" }

void geo::transform(string scalar methods) { this.prev = this.get(); this.current = this.get() + ".transform(" + args + ")" }

void geo::translate(| string scalar point) { this.prev = this.get(); this.current = this.get() + ".translate(" + args + ")" }

void geo::transverseMercator() { this.prev = this.get(); this.current = this.get() + ".transverseMercator(" + args + ")" }

end 


