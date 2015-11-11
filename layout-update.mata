mata: 

class layout {

	private: 
	string		scalar		layout, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void					alpha(), bins(), bundle(), charge(), 
							chargeDistance(), children(), chord(), chords(), 
							cluster(), drag(), endAngle(), force(), frequency(), 
							friction(), gravity(), groups(), hierarchy(), 
							histogram(), linkDistance(), linkStrength(), links(), 
							matrx(), mode(), nodeSize(), nodes(), offset(), 
							on(), order(), out(), pack(), padAngle(), padding(), 
							partition(), pie(), radius(), range(), ratio(), 
							resume(), revalue(), round(), separation(), size(), 
							sort(), sortChords(), sortGroups(), sortSubgroups(), 
							stack(), start(), startAngle(), sticky(), stop(), 
							theta(), tick(), tree(), treemap(), value(), values(), 
							x(), y(), init()

}

void layout::init(string scalar vnm) {
     this.varnm = vnm 
     this.layout = "var " + vnm + " = d3.layout"
     this.current = "var " + vnm + " = d3.layout"
     this.prev = ""
}

string scalar layout::get() {
     return(this.current) 
}

string scalar layout::complete() {
     return(this.current + ";") 
}

string scalar layout::getVarnm() {
     return(this.varnm) 
}

string scalar layout::undo() {
	this.current = this.prev
    return(this.current) 
}

void layout::alpha(| string scalar value) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".alpha(" + value + ")" 
	}
	else {
		this.current = this.get() + ".alpha()" 
	}
}

void layout::bins(| string scalar count) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".bins(" + count + ")" 
	}
	else {
		this.current = this.get() + ".bins()" 
	}
}

void layout::bundle(| string scalar links) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".bundle(" + links + ")" 
	}
	else {
		this.current = this.get() + ".bundle()" 
	}
}

void layout::charge(| string scalar charge) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".charge(" + charge + ")" 
	}
	else {
		this.current = this.get() + ".charge()" 
	}
}

void layout::chargeDistance(| string scalar distance) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".chargeDistance(" + distance + ")" 
	}
	else {
		this.current = this.get() + ".chargeDistance()" 
	}
}

void layout::children(| string scalar accessor) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".children(" + accessor + ")" 
	}
	else {
		this.current = this.get() + ".children()" 
	}
}

void layout::chord() { 
	this.prev = this.get()
	this.current = this.get() + ".chord()" 
}

void layout::chords() { 
	this.prev = this.get()
	this.current = this.get() + ".chords()" 
}

void layout::cluster(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".cluster(" + root + ")" 
	}
	else {
		this.current = this.get() + ".cluster()" 
	}
}

void layout::drag() { 
	this.prev = this.get()
	this.current = this.get() + ".drag()" 
}

void layout::endAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".endAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".endAngle()" 
	}
}

void layout::force() { 
	this.prev = this.get()
	this.current = this.get() + ".force()" 
}

void layout::frequency(| string scalar frequency) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".frequency(" + frequency + ")" 
	}
	else {
		this.current = this.get() + ".frequency()" 
	}
}

void layout::friction(| string scalar friction) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".friction(" + friction + ")" 
	}
	else {
		this.current = this.get() + ".friction()" 
	}
}

void layout::gravity(| string scalar gravity) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".gravity(" + gravity + ")" 
	}
	else {
		this.current = this.get() + ".gravity()" 
	}
}

void layout::groups() { 
	this.prev = this.get()
	this.current = this.get() + ".groups()" 
}

void layout::hierarchy(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".hierarchy(" + root + ")" 
	}
	else {
		this.current = this.get() + ".hierarchy()" 
	}
}

void layout::histogram(| string scalar values, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".histogram(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".histogram(" + values + ")" 
	}
	else {
		this.current = this.get() + ".histogram()" 
	}
}

void layout::linkDistance(| string scalar distance) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".linkDistance(" + distance + ")" 
	}
	else {
		this.current = this.get() + ".linkDistance()" 
	}
}

void layout::linkStrength(| string scalar strength) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".linkStrength(" + strength + ")" 
	}
	else {
		this.current = this.get() + ".linkStrength()" 
	}
}

void layout::links(| string scalar links) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".links(" + links + ")" 
	}
	else {
		this.current = this.get() + ".links()" 
	}
}

void layout::matrx(| string scalar matrx) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".matrix(" + matrx + ")" 
	}
	else {
		this.current = this.get() + ".matrix()" 
	}
}

void layout::mode(| string scalar mode) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".mode(" + mode + ")" 
	}
	else {
		this.current = this.get() + ".mode()" 
	}
}

void layout::nodeSize(| string scalar nodeSize) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".nodeSize(" + nodeSize + ")" 
	}
	else {
		this.current = this.get() + ".nodeSize()" 
	}
}

void layout::nodes(| string scalar nodes) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".nodes(" + nodes + ")" 
	}
	else {
		this.current = this.get() + ".nodes()" 
	}
}

void layout::offset(| string scalar offset) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".offset(" + offset + ")" 
	}
	else {
		this.current = this.get() + ".offset()" 
	}
}

void layout::on(string scalar type, string scalar listener) { 
	this.prev = this.get()
	this.current = this.get() + ".on(" + type + ", " + listener + ")" 
}

void layout::order(| string scalar order) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".order(" + order + ")" 
	}
	else {
		this.current = this.get() + ".order()" 
	}
}

void layout::out(| string scalar setter) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".out(" + setter + ")" 
	}
	else {
		this.current = this.get() + ".out()" 
	}
}

void layout::pack(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".pack(" + root + ")" 
	}
	else {
		this.current = this.get() + ".pack()" 
	}
}

void layout::padAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".padAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".padAngle()" 
	}
}

void layout::padding(| string scalar padding) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".padding(" + padding + ")" 
	}
	else {
		this.current = this.get() + ".padding()" 
	}
}

void layout::partition(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".partition(" + root + ")" 
	}
	else {
		this.current = this.get() + ".partition()" 
	}
}

void layout::pie(| string scalar values, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".pie(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".pie(" + values + ")" 
	}
	else {
		this.current = this.get() + ".pie()" 
	}
}

void layout::radius(| string scalar radius) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".radius(" + radius + ")" 
	}
	else {
		this.current = this.get() + ".radius()" 
	}
}

void layout::range(| string scalar range) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".range(" + range + ")" 
	}
	else {
		this.current = this.get() + ".range()" 
	}
}

void layout::ratio(| string scalar ratio) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".ratio(" + ratio + ")" 
	}
	else {
		this.current = this.get() + ".ratio()" 
	}
}

void layout::resume() { 
	this.prev = this.get()
	this.current = this.get() + ".resume()" 
}

void layout::revalue(string scalar root) { 
	this.prev = this.get()
	this.current = this.get() + ".revalue(" + root + ")" 
}

void layout::round(| string scalar round) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".round(" + round + ")" 
	}
	else {
		this.current = this.get() + ".round()" 
	}
}

void layout::separation(| string scalar separation) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".separation(" + separation + ")" 
	}
	else {
		this.current = this.get() + ".separation()" 
	}
}

void layout::size(| string scalar width, string scalar height) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".size(" + width + ", " + height + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".size(" + width + ")" 
	}
	else {
		this.current = this.get() + ".size(\)" 
	}
}

void layout::sort(| string scalar comparator) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".sort(" + comparator + ")" 
	}
	else {
		this.current = this.get() + ".sort()" 
	}
}

void layout::sortChords(| string scalar comparator) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".sortChords(" + comparator + ")" 
	}
	else {
		this.current = this.get() + ".sortChords()" 
	}
}

void layout::sortGroups(| string scalar comparator) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".sortGroups(" + comparator + ")" 
	}
	else {
		this.current = this.get() + ".sortGroups()" 
	}
}

void layout::sortSubgroups(| string scalar comparator) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".sortSubgroups(" + comparator + ")" 
	}
	else {
		this.current = this.get() + ".sortSubgroups()" 
	}
}

void layout::stack(| string scalar layers, string scalar index) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".stack(" + layers + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".stack(" + layers + ")" 
	}
	else {
		this.current = this.get() + ".stack()" 
	}
}

void layout::start() { 
	this.prev = this.get()
	this.current = this.get() + ".start()" 
}

void layout::startAngle(| string scalar angle) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".startAngle(" + angle + ")" 
	}
	else {
		this.current = this.get() + ".startAngle()" 
	}
}

void layout::sticky(| string scalar sticky) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".sticky(" + sticky + ")" 
	}
	else {
		this.current = this.get() + ".sticky()" 
	}
}

void layout::stop() { 
	this.prev = this.get()
	this.current = this.get() + ".stop()" 
}

void layout::theta(| string scalar theta) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".theta(" + theta + ")" 
	}
	else {
		this.current = this.get() + ".theta()" 
	}
}

void layout::tick() { 
	this.prev = this.get()
	this.current = this.get() + ".tick()" 
}

void layout::tree(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".tree(" + root + ")" 
	}
	else {
		this.current = this.get() + ".tree()" 
	}
}

void layout::treemap(| string scalar root) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".treemap(" + root + ")"
	}
	else {
		this.current = this.get() + ".treemap()"
	} 
}

void layout::value(| string scalar value) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".value(" + value + ")"
	}
	else {
		this.current = this.get() + ".value()"
	} 
}

void layout::values(| string scalar accessor) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".values(" + accessor + ")" 
	}
	else {
		this.current = this.get() + ".values()" 
	}
}

void layout::x(| string scalar accessor) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x(" + accessor + ")" 
	}
	else {
		this.current = this.get() + ".x()" 
	}
}

void layout::y(| string scalar accessor) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y(" + accessor + ")" 
	}
	else {
		this.current = this.get() + ".y()" 
	}
}



end 


