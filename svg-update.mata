mata: 

mata clear

class svg {

private: 
string scalar svg, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void angle()
void arc()
void area()
void axis()
void brush()
void centroid()
void chord()
void clamp()
void clear()
void cornerRadius()
void defined()
void diagonal()
void empty()
void endAngle()
void event()
void extent()
void innerRadius()
void innerTickSize()
void interpolate()
void line()
void on()
void orient()
void outerRadius()
void outerTickSize()
void padAngle()
void padRadius()
void projection()
void radial()
void radius()
void scale()
void size()
void source()
void startAngle()
void symbol()
void target()
void tension()
void tickFormat()
void tickPadding()
void tickSize()
void tickValues()
void ticks()
void type()
void x()
void x0()
void x1()
void y()
void y0()
void y1()
}

void svg::init(string scalar vnm) {
     this.varnm = vnm 
     this.svg = "var " + vnm + " = svg
     this.current = "var " + vnm + " = svg
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

string scalar svg::recover() {
     return(this.prev) 
}

void svg::angle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".angle(" + args + ")" }

void svg::arc() { this.prev = this.get(); this.current = this.get() + ".arc(" + args + ")" }

void svg::arc(string scalar datum, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".arc(" + args + ")" }

void svg::area() { this.prev = this.get(); this.current = this.get() + ".area(" + args + ")" }

void svg::area(string scalar data) { this.prev = this.get(); this.current = this.get() + ".area(" + args + ")" }

void svg::axis() { this.prev = this.get(); this.current = this.get() + ".axis(" + args + ")" }

void svg::axis(string scalar selection) { this.prev = this.get(); this.current = this.get() + ".axis(" + args + ")" }

void svg::brush() { this.prev = this.get(); this.current = this.get() + ".brush(" + args + ")" }

void svg::brush(string scalar selection) { this.prev = this.get(); this.current = this.get() + ".brush(" + args + ")" }

void svg::centroid(string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".centroid(" + args + ")" }

void svg::chord() { this.prev = this.get(); this.current = this.get() + ".chord(" + args + ")" }

void svg::chord(string scalar datum, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".chord(" + args + ")" }

void svg::clamp(| string scalar clamp) { this.prev = this.get(); this.current = this.get() + ".clamp(" + args + ")" }

void svg::clear() { this.prev = this.get(); this.current = this.get() + ".clear(" + args + ")" }

void svg::cornerRadius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".cornerRadius(" + args + ")" }

void svg::defined(| string scalar defined) { this.prev = this.get(); this.current = this.get() + ".defined(" + args + ")" }

void svg::diagonal() { this.prev = this.get(); this.current = this.get() + ".diagonal(" + args + ")" }

void svg::diagonal(string scalar datum, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".diagonal(" + args + ")" }

void svg::empty() { this.prev = this.get(); this.current = this.get() + ".empty(" + args + ")" }

void svg::endAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".endAngle(" + args + ")" }

void svg::event(string scalar selection) { this.prev = this.get(); this.current = this.get() + ".event(" + args + ")" }

void svg::extent(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".extent(" + args + ")" }

void svg::innerRadius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".innerRadius(" + args + ")" }

void svg::innerTickSize(| string scalar size) { this.prev = this.get(); this.current = this.get() + ".innerTickSize(" + args + ")" }

void svg::interpolate(| string scalar interpolate) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void svg::line() { this.prev = this.get(); this.current = this.get() + ".line(" + args + ")" }

void svg::line(string scalar data) { this.prev = this.get(); this.current = this.get() + ".line(" + args + ")" }

void svg::on(string scalar type, | string scalar listener) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void svg::orient(| string scalar orientation) { this.prev = this.get(); this.current = this.get() + ".orient(" + args + ")" }

void svg::outerRadius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".outerRadius(" + args + ")" }

void svg::outerTickSize(| string scalar size) { this.prev = this.get(); this.current = this.get() + ".outerTickSize(" + args + ")" }

void svg::padAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".padAngle(" + args + ")" }

void svg::padRadius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".padRadius(" + args + ")" }

void svg::projection(| string scalar projection) { this.prev = this.get(); this.current = this.get() + ".projection(" + args + ")" }

void svg::radial() { this.prev = this.get(); this.current = this.get() + ".radial(" + args + ")" }

void svg::radius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".radius(" + args + ")" }

void svg::scale(| string scalar scale) { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void svg::size(| string scalar size) { this.prev = this.get(); this.current = this.get() + ".size(" + args + ")" }

void svg::source(| string scalar source) { this.prev = this.get(); this.current = this.get() + ".source(" + args + ")" }

void svg::startAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".startAngle(" + args + ")" }

void svg::symbol() { this.prev = this.get(); this.current = this.get() + ".symbol(" + args + ")" }

void svg::symbol(string scalar datum, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".symbol(" + args + ")" }

void svg::target(| string scalar target) { this.prev = this.get(); this.current = this.get() + ".target(" + args + ")" }

void svg::tension(| string scalar tension) { this.prev = this.get(); this.current = this.get() + ".tension(" + args + ")" }

void svg::tickFormat(| string scalar format) { this.prev = this.get(); this.current = this.get() + ".tickFormat(" + args + ")" }

void svg::tickPadding(| string scalar padding) { this.prev = this.get(); this.current = this.get() + ".tickPadding(" + args + ")" }

void svg::tickSize(| string scalar inner, string scalar outer) { this.prev = this.get(); this.current = this.get() + ".tickSize(" + args + ")" }

void svg::tickValues(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".tickValues(" + args + ")" }

void svg::ticks(| string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void svg::type(| string scalar type) { this.prev = this.get(); this.current = this.get() + ".type(" + args + ")" }

void svg::x(| string scalar scale) { this.prev = this.get(); this.current = this.get() + ".x(" + args + ")" }

void svg::x(| string scalar x) { this.prev = this.get(); this.current = this.get() + ".x(" + args + ")" }

void svg::x0(| string scalar x0) { this.prev = this.get(); this.current = this.get() + ".x0(" + args + ")" }

void svg::x1(| string scalar x1) { this.prev = this.get(); this.current = this.get() + ".x1(" + args + ")" }

void svg::y(| string scalar scale) { this.prev = this.get(); this.current = this.get() + ".y(" + args + ")" }

void svg::y(| string scalar y) { this.prev = this.get(); this.current = this.get() + ".y(" + args + ")" }

void svg::y0(| string scalar y0) { this.prev = this.get(); this.current = this.get() + ".y0(" + args + ")" }

void svg::y1(| string scalar y1) { this.prev = this.get(); this.current = this.get() + ".y1(" + args + ")" }

end 


