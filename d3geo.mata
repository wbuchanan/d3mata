mata: 

class d3geo { 
	private:
	string				scalar	geo, varnm
	
	public:
	void							new(), destroy(), init(), area(), bounds(),
									centroid(), circle(), distance(), interpolate(), 
									length(), albersUsa(), albers_raw(), albers(), 
									azimuthalEqualArea_raw(), azimuthalEqualArea(), 
									azimuthalEquidistant_raw(), 
									azimuthalEquidistant(), conicConformal_raw(), 
									conicConformal(), conicEqualArea_raw(), 
									conicEqualArea(), conicEquidistant_raw(), 
									conicEquidistant(), equirectangular_raw(), 
									equirectangular(), gnomonic_raw(), gnomonic(), 
									mercator_raw(), mercator(), orthographic_raw(), 
									orthographic(), projectionMutator(), 
									stereographic_raw(), stereographic(), 
									transverseMercator_raw(), clipExtent(), 
									extent(), transform(), transform_stream()

	string					scalar	get(), complete(), getVarnm()
	class	d3geocircle		scalar	circl()
	class	d3geograticule	scalar	graticule()
	class	d3geopath		scalar	path()
	class	d3georotation	scalar	rotation()
	class	d3geoprojection	scalar	projection()
	class	d3geostream		scalar	stream()
}

string scalar d3geo::get() { 
    return(this.geo)
}

string scalar d3geo::getVarnm() { 
    return(this.varnm)
}

string scalar d3geo::complete() { 
    string scalar geoObject 
    geoObject = this.get() + ";"
    return(geoObject)
}

void d3geo::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.geo = "var " + vnm + " = " + arguments 
	}
	else {
		this.geo = vnm
	}
	this.varnm = vnm
}

void d3geo::new() {
}

void d3geo::destroy() {
}

class d3geograticule scalar d3geo::graticule(string scalar varnm) {
	class d3geograticule scalar ge
	ge = d3geograticule()
	ge.init(varnm)
	return(ge)
}


class d3geocircle scalar d3geo::circl(string scalar varnm) {
	class d3geocircle scalar circ
	circ = d3geocircl()
	circ.init(this.getVarnm() + ".circle")
	return(circ)
}


class d3geopath scalar d3geo::path() {
	class d3geopath scalar ge
	ge = d3geopath()
	ge.init(varnm, this.getVarnm())
	return(ge)
}


class d3georotation scalar d3geo::rotation(string scalar varnm, 			 ///   
	string scalar lambda, string scalar phi, | string scalar gamma) {
	class d3georotation scalar ge
	ge = d3georotation()
	string scalar rotator
	if (gamma == "") {
		gamma = "0"
	}
	rotator = this.getVarnm() + ".rotation([" + lambda + ", " + phi + ", " + gamma + "])"
	ge.init(varnm, rotator)
	return(ge)
}


class d3geoprojection scalar d3geo::projection(string scalar varnm) {
	class d3geoprojection scalar ge
	ge = d3geoprojection()
	ge.init(varnm, this.getVarnm())
	return(ge)
}

class d3geostream scalar d3geo::stream(string scalar varnm, 				 ///   
								 string scalar object, string scalar listener) {
	class d3geostream scalar ge
	ge = d3geostream()
	string scalar geoargs
	geoargs = this.getVarnm() + ".stream(" + object + ", " + listener + ")"
	ge.init(varnm, geoargs)
	return(ge)
}



void d3geo::area(string scalar feature) {
	this.geo = this.get() + ".area(" + feature + ")"
}


void d3geo::bounds(string scalar feature) {
	this.geo = this.get() + ".bounds(" + feature + ")" 
}


void d3geo::centroid(string scalar feature) {
	this.geo = this.get() + ".centroid(" + feature + ")"
}


void d3geo::circle() {
	this.geo = this.get() + ".circle" 
}


void d3geo::distance(string scalar a, string scalar b) {
	this.geo = this.get() + ".distance(" + a + ", " + b + ")" 
}


void d3geo::interpolate(string scalar a, string scalar b) {
	this.geo = this.get() + ".interpolate(" + a + ", " + b + ")" 
}


void d3geo::length(string scalar feature) {
	this.geo = this.get() + ".length(" + feature + ")" 
}

void d3geo::albersUsa() {
	this.geo = this.get() + ".albersUsa()" 
}


void d3geo::albers_raw(string scalar phi0, string scalar phi1) {
	this.geo = this.get() + ".albers.raw(" + phi0 + ", " + phi1 + ")" 
}

void d3geo::albers() {
	this.geo = this.get() + ".albers()" 
}


void d3geo::azimuthalEqualArea_raw() {
	this.geo = this.get() + ".azimuthalEqualArea()" 
}


void d3geo::azimuthalEqualArea() {
	this.geo = this.get() + ".azimuthalEqualArea()" 
}


void d3geo::azimuthalEquidistant_raw() {
	this.geo = this.get() + ".azimuthalEquidistant()" 
}


void d3geo::azimuthalEquidistant() {
	this.geo = this.get() + ".azimuthalEquidistant()" 
}


void d3geo::conicConformal_raw(string scalar phi0, string scalar phi1) {
	this.geo = this.get() + ".conicConformal.raw(" + phi0 + ", " + phi1 + ")"  
}


void d3geo::conicConformal() {
	this.geo = this.get() + ".conicConformal()" 
}


void d3geo::conicEqualArea_raw(string scalar phi0, string scalar phi1) {
	this.geo = this.get() + ".conicEqualArea.raw(" + phi0 + ", " + phi1 + ")" 
}


void d3geo::conicEqualArea() {
	this.geo = this.get() + ".conicEqualArea()" 
}


void d3geo::conicEquidistant_raw(string scalar phi0, string scalar phi1) {
	this.geo = this.get() + ".conicEquidistant.raw(" + phi0 + ", " + phi1 + ")" 
}


void d3geo::conicEquidistant() {
	this.geo = this.get() + ".conicEquidistant()" 
}


void d3geo::equirectangular_raw() {
	this.geo = this.get() + ".equirectangular.raw" 
}


void d3geo::equirectangular() {
	this.geo = this.get() + ".equirectangular()" 
}


void d3geo::gnomonic_raw() {
	this.geo = this.get() + ".gnomonic.raw" 
}


void d3geo::gnomonic() {
	this.geo = this.get() + ".gnomonic()" 
}


void d3geo::mercator_raw() {
	this.geo = this.get() + ".mercator.raw" 
}


void d3geo::mercator() {
	this.geo = this.get() + ".mercator()" 
}


void d3geo::orthographic_raw() {
	this.geo = this.get() + ".orthographic.raw" 
}


void d3geo::orthographic() {
	this.geo = this.get() + ".orthographic()" 
}


void d3geo::projectionMutator() {
	this.geo = this.get() + ".geo" 
}


void d3geo::stereographic_raw() {
	this.geo = this.get() + ".stereographic.raw" 
}


void d3geo::stereographic() {
	this.geo = this.get() + ".stereographic()" 
}


void d3geo::transverseMercator_raw() {
	this.geo = this.get() + ".transverseMercator.raw" 
}


void d3geo::clipExtent() {
	this.geo = this.get() + ".clipExtent()" 
}



void d3geo::extent(| string scalar extent) {
	if (extent != "") {
		this.geo = this.get() + ".extent(" + extent + ")" 
	}
	else {
		this.geo = this.get() + ".extent()" 
	}
}


void d3geo::transform(string scalar methods) {
	this.geo = this.get() + ".transform(" + methods + ")" 
}

void d3geo::transform_stream(string scalar listener) {
	this.geo = this.get() + ".transform.stream(" + listener + ")" 
}

end
