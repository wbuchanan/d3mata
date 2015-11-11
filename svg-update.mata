mata: 

class svg {

	private: 
	string		scalar		svg, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void 					angle(), arc(), area(), axis(), brush(), centroid(), 
							chord(), clamp(), clear(), cornerRadius(), 
							defined(), diagonal(), empty(), endAngle(), event(), 
							extent(), innerRadius(), innerTickSize(), 
							interpolate(), line(), on(), orient(), outerRadius(), 
							outerTickSize(), padAngle(), padRadius(), 
							projection(), radial(), radius(), scale(), size(), 
							source(), startAngle(), symbol(), symbolTypes(), target(), 
							tension(), tickFormat(), tickPadding(), tickSize(), 
							tickValues(), ticks(), type(), x(), x0(), x1(), 
							y(), y0(), y1(), init()

}

void svg::symbolTypes() {
	this.prev = this.get()
	this.current = this.get() + ".symbolTypes"
}

void svg::init(string scalar vnm) {
     this.varnm = vnm 
     this.svg = "var " + vnm + " = d3.svg"
     this.current = "var " + vnm + " = d3.svg"
     this.prev = ""
}

string scalar svg::get() {
     return(this.current) 
}

string scalar svg::complete() {
     return(this.current + ";") 
}

string scalar svg::getVarnm() {
     return(this.varnm) 
}

string scalar svg::undo() {
	this.current = this.prev
    return(this.current) 
}

void svg::angle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".angle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".angle()" 
	}
}

void svg::arc(| string scalar datum, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".arc(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".arc(" + datum + ")" 
	}
	else {
		this.current = this.get() + ".arc()" 
	}
}

void svg::area(| string scalar data) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".area(" + data + ")" 
	}
	else {
		this.current = this.get() + ".area()" 
	}
}

void svg::axis(| string scalar selection) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".axis(" + selection + ")" 
	}
	else {
		this.current = this.get() + ".axis()" 
	}
}

void svg::brush(| string scalar selection) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".brush(" + selection + ")" 
	}
	else {
		this.current = this.get() + ".brush()" 
	}
}

void svg::centroid(string scalar arguments) { 
	this.prev = this.get()
	this.current = this.get() + ".centroid(" + arguments + ")" 
}

void svg::chord(| string scalar datum, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".chord(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".chord(" + datum + ")" 
	}
	else {
		this.current = this.get() + ".chord()" 
	}
}

void svg::clamp(| string scalar clamp) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".clamp(" + clamp + ")" 
	}
	else {
		this.current = this.get() + ".clamp()" 
	}
}

void svg::clear() { 
	this.prev = this.get()
	this.current = this.get() + ".clear()" 
}

void svg::cornerRadius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".cornerRadius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".cornerRadius()" 
	}
}

void svg::defined(| string scalar defined) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".defined(" + defined + ")" 
	}
	else {
		this.current = this.get() + ".defined()" 
	}
}

void svg::diagonal(| string scalar datum, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".diagonal(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".diagonal(" + datum + ")" 
	}
	else {
		this.current = this.get() + ".diagonal()" 
	}
}

void svg::empty() { 
	this.prev = this.get()
	this.current = this.get() + ".empty()" 
}

void svg::endAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".endAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".endAngle()" 
	}
}

void svg::event(string scalar selection) { 
	this.prev = this.get()
	this.current = this.get() + ".event(" + selection + ")" 
}

void svg::extent(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".extent(" + values + ")" 
	}
	else {
		this.current = this.get() + ".extent()" 
	}
}

void svg::innerRadius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".innerRadius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".innerRadius()" 
	}
}

void svg::innerTickSize(| string scalar size) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".innerTickSize(" + size + ")" 
	}
	else {
		this.current = this.get() + ".innerTickSize()" 
	}
}

void svg::interpolate(| string scalar interpolate) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".interpolate(" + interpolate + ")" 
	}
	else {
		this.current = this.get() + ".interpolate()" 
	}
}

void svg::line(| string scalar data) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".line(" + data + ")" 
	}
	else {
		this.current = this.get() + ".line()" 
	}
}

void svg::on(string scalar type, | string scalar listener) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".on(" + type + ", " + listener + ")" 
	}
	else {
		this.current = this.get() + ".on(" + type + ")" 
	}
}

void svg::orient(| string scalar orientation) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".orient(" + orientation + ")" 
	}
	else {
		this.current = this.get() + ".orient()" 
	}
}

void svg::outerRadius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".outerRadius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".outerRadius()" 
	}
}

void svg::outerTickSize(| string scalar size) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".outerTickSize(" + size + ")" 
	}
	else {
		this.current = this.get() + ".outerTickSize()" 
	}
}

void svg::padAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".padAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".padAngle()" 
	}
}

void svg::padRadius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".padRadius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".padRadius()" 
	}
}

void svg::projection(| string scalar projection) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".projection(" + projection + ")" 
	}
	else {
		this.current = this.get() + ".projection()" 
	}
}

void svg::radial() { 
	this.prev = this.get()
	this.current = this.get() + ".radial()" 
}

void svg::radius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".radius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".radius()" 
	}
}

void svg::scale(| string scalar scale) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scale(" + scale + ")" 
	}
	else {
		this.current = this.get() + ".scale()" 
	}
}

void svg::size(| string scalar size) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".size(" + size + ")" 
	}
	else {
		this.current = this.get() + ".size()" 
	}
}

void svg::source(| string scalar source) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".source(" + source + ")" 
	}
	else {
		this.current = this.get() + ".source()" 
	}
}

void svg::startAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".startAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".startAngle()" 
	}
}

void svg::symbol(| string scalar datum, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".symbol(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".symbol(" + datum + ")" 
	}
	else {
		this.current = this.get() + ".symbol()" 
	}
}

void svg::target(| string scalar target) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".target(" + target + ")" 
	}
	else {
		this.current = this.get() + ".target()" 
	}
}

void svg::tension(| string scalar tension) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".tension(" + tension + ")" 
	}
	else {
		this.current = this.get() + ".tension()" 
	}
}

void svg::tickFormat(| string scalar format) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".tickFormat(" + format + ")" 
	}
	else {
		this.current = this.get() + ".tickFormat()" 
	}
}

void svg::tickPadding(| string scalar padding) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".tickPadding(" + padding + ")" 
	}
	else {
		this.current = this.get() + ".tickPadding()" 
	}
}

void svg::tickSize(| string scalar inner, string scalar outer) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".tickSize(" + inner + ", " + outer + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".tickSize(" + inner + ")" 
	}
	else {
		this.current = this.get() + ".tickSize()" 
	}
}

void svg::tickValues(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".tickValues(" + values + ")" 
	}
	else {
		this.current = this.get() + ".tickValues()" 
	}
}

void svg::ticks(| string scalar arguments) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".ticks(" + arguments + ")" 
	}
	else {
		this.current = this.get() + ".ticks()" 
	}
}

void svg::type(| string scalar type) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".type(" + type + ")" 
	}
	else {
		this.current = this.get() + ".type()" 
	}
}


void svg::x(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x(" + x + ")" 
	}
	else {
		this.current = this.get() + ".x()" 
	}
}

void svg::x0(| string scalar x0) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x0(" + x0 + ")" 
	}
	else {
		this.current = this.get() + ".x0()" 
	}
}

void svg::x1(| string scalar x1) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x1(" + x1 + ")" 
	}
	else {
		this.current = this.get() + ".x1()" 
	}
}


void svg::y(| string scalar y) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y(" + y + ")" 
	}
	else {
		this.current = this.get() + ".y()" 
	}
}

void svg::y0(| string scalar y0) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y0(" + y0 + ")" 
	}
	else {
		this.current = this.get() + ".y0()" 
	}
}

void svg::y1(| string scalar y1) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y1(" + y1 + ")" 
	}
	else {
		this.current = this.get() + ".y1()" 
	}
}


end 


