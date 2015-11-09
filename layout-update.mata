mata: 

mata clear

class layout {

private: 
string scalar layout, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void alpha()
void bins()
void bundle()
void charge()
void chargeDistance()
void children()
void chord()
void chords()
void cluster()
void drag()
void endAngle()
void force()
void frequency()
void friction()
void gravity()
void groups()
void hierarchy()
void histogram()
void linkDistance()
void linkStrength()
void links()
void matrix()
void mode()
void nodeSize()
void nodes()
void offset()
void on()
void order()
void out()
void pack()
void padAngle()
void padding()
void partition()
void pie()
void radius()
void range()
void ratio()
void resume()
void revalue()
void round()
void separation()
void size()
void sort()
void sortChords()
void sortGroups()
void sortSubgroups()
void stack()
void start()
void startAngle()
void sticky()
void stop()
void theta()
void tick()
void tree()
void treemap()
void value()
void values()
void x()
void y()
}

void layout::init(string scalar vnm) {
     this.varnm = vnm 
     this.layout = "var " + vnm + " = layout
     this.current = "var " + vnm + " = layout
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

string scalar layout::recover() {
     return(this.prev) 
}

void layout::alpha(| string scalar value) { this.prev = this.get(); this.current = this.get() + ".alpha(" + args + ")" }

void layout::bins() { this.prev = this.get(); this.current = this.get() + ".bins(" + args + ")" }

void layout::bins(string scalar count) { this.prev = this.get(); this.current = this.get() + ".bins(" + args + ")" }

void layout::bins(string scalar function) { this.prev = this.get(); this.current = this.get() + ".bins(" + args + ")" }

void layout::bins(string scalar thresholds) { this.prev = this.get(); this.current = this.get() + ".bins(" + args + ")" }

void layout::bundle() { this.prev = this.get(); this.current = this.get() + ".bundle(" + args + ")" }

void layout::bundle(string scalar links) { this.prev = this.get(); this.current = this.get() + ".bundle(" + args + ")" }

void layout::charge(| string scalar charge) { this.prev = this.get(); this.current = this.get() + ".charge(" + args + ")" }

void layout::chargeDistance(| string scalar distance) { this.prev = this.get(); this.current = this.get() + ".chargeDistance(" + args + ")" }

void layout::children(| string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".children(" + args + ")" }

void layout::children(| string scalar children) { this.prev = this.get(); this.current = this.get() + ".children(" + args + ")" }

void layout::chord() { this.prev = this.get(); this.current = this.get() + ".chord(" + args + ")" }

void layout::chords() { this.prev = this.get(); this.current = this.get() + ".chords(" + args + ")" }

void layout::cluster() { this.prev = this.get(); this.current = this.get() + ".cluster(" + args + ")" }

void layout::cluster(string scalar root) { this.prev = this.get(); this.current = this.get() + ".cluster(" + args + ")" }

void layout::drag() { this.prev = this.get(); this.current = this.get() + ".drag(" + args + ")" }

void layout::endAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".endAngle(" + args + ")" }

void layout::force() { this.prev = this.get(); this.current = this.get() + ".force(" + args + ")" }

void layout::frequency(| string scalar frequency) { this.prev = this.get(); this.current = this.get() + ".frequency(" + args + ")" }

void layout::friction(| string scalar friction) { this.prev = this.get(); this.current = this.get() + ".friction(" + args + ")" }

void layout::gravity(| string scalar gravity) { this.prev = this.get(); this.current = this.get() + ".gravity(" + args + ")" }

void layout::groups() { this.prev = this.get(); this.current = this.get() + ".groups(" + args + ")" }

void layout::hierarchy() { this.prev = this.get(); this.current = this.get() + ".hierarchy(" + args + ")" }

void layout::hierarchy(string scalar root) { this.prev = this.get(); this.current = this.get() + ".hierarchy(" + args + ")" }

void layout::histogram() { this.prev = this.get(); this.current = this.get() + ".histogram(" + args + ")" }

void layout::histogram(string scalar values, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".histogram(" + args + ")" }

void layout::linkDistance(| string scalar distance) { this.prev = this.get(); this.current = this.get() + ".linkDistance(" + args + ")" }

void layout::linkStrength(| string scalar strength) { this.prev = this.get(); this.current = this.get() + ".linkStrength(" + args + ")" }

void layout::links(string scalar nodes) { this.prev = this.get(); this.current = this.get() + ".links(" + args + ")" }

void layout::links(| string scalar links) { this.prev = this.get(); this.current = this.get() + ".links(" + args + ")" }

void layout::matrix(| string scalar matrix) { this.prev = this.get(); this.current = this.get() + ".matrix(" + args + ")" }

void layout::mode(| string scalar mode) { this.prev = this.get(); this.current = this.get() + ".mode(" + args + ")" }

void layout::nodeSize(| string scalar nodeSize) { this.prev = this.get(); this.current = this.get() + ".nodeSize(" + args + ")" }

void layout::nodes(string scalar root) { this.prev = this.get(); this.current = this.get() + ".nodes(" + args + ")" }

void layout::nodes(| string scalar nodes) { this.prev = this.get(); this.current = this.get() + ".nodes(" + args + ")" }

void layout::offset(| string scalar offset) { this.prev = this.get(); this.current = this.get() + ".offset(" + args + ")" }

void layout::on(string scalar type, string scalar listener) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void layout::order(| string scalar order) { this.prev = this.get(); this.current = this.get() + ".order(" + args + ")" }

void layout::out(| string scalar setter) { this.prev = this.get(); this.current = this.get() + ".out(" + args + ")" }

void layout::pack() { this.prev = this.get(); this.current = this.get() + ".pack(" + args + ")" }

void layout::pack(string scalar root) { this.prev = this.get(); this.current = this.get() + ".pack(" + args + ")" }

void layout::padAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".padAngle(" + args + ")" }

void layout::padding(| string scalar padding) { this.prev = this.get(); this.current = this.get() + ".padding(" + args + ")" }

void layout::partition() { this.prev = this.get(); this.current = this.get() + ".partition(" + args + ")" }

void layout::partition(string scalar root) { this.prev = this.get(); this.current = this.get() + ".partition(" + args + ")" }

void layout::pie() { this.prev = this.get(); this.current = this.get() + ".pie(" + args + ")" }

void layout::pie(string scalar values, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".pie(" + args + ")" }

void layout::radius(| string scalar radius) { this.prev = this.get(); this.current = this.get() + ".radius(" + args + ")" }

void layout::range(| string scalar range) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void layout::ratio(| string scalar ratio) { this.prev = this.get(); this.current = this.get() + ".ratio(" + args + ")" }

void layout::resume() { this.prev = this.get(); this.current = this.get() + ".resume(" + args + ")" }

void layout::revalue(string scalar root) { this.prev = this.get(); this.current = this.get() + ".revalue(" + args + ")" }

void layout::round(| string scalar round) { this.prev = this.get(); this.current = this.get() + ".round(" + args + ")" }

void layout::separation(| string scalar separation) { this.prev = this.get(); this.current = this.get() + ".separation(" + args + ")" }

void layout::size(| string scalar size) { this.prev = this.get(); this.current = this.get() + ".size(" + args + ")" }

void layout::size(| string scalar width, string scalar height) { this.prev = this.get(); this.current = this.get() + ".size(" + args + ")" }

void layout::sort(| string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sort(" + args + ")" }

void layout::sortChords(| string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sortChords(" + args + ")" }

void layout::sortGroups(| string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sortGroups(" + args + ")" }

void layout::sortSubgroups(| string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sortSubgroups(" + args + ")" }

void layout::stack() { this.prev = this.get(); this.current = this.get() + ".stack(" + args + ")" }

void layout::stack(string scalar layers, | string scalar index) { this.prev = this.get(); this.current = this.get() + ".stack(" + args + ")" }

void layout::start() { this.prev = this.get(); this.current = this.get() + ".start(" + args + ")" }

void layout::startAngle(| string scalar angle) { this.prev = this.get(); this.current = this.get() + ".startAngle(" + args + ")" }

void layout::sticky(| string scalar sticky) { this.prev = this.get(); this.current = this.get() + ".sticky(" + args + ")" }

void layout::stop() { this.prev = this.get(); this.current = this.get() + ".stop(" + args + ")" }

void layout::theta(| string scalar theta) { this.prev = this.get(); this.current = this.get() + ".theta(" + args + ")" }

void layout::tick() { this.prev = this.get(); this.current = this.get() + ".tick(" + args + ")" }

void layout::tree() { this.prev = this.get(); this.current = this.get() + ".tree(" + args + ")" }

void layout::tree(string scalar root) { this.prev = this.get(); this.current = this.get() + ".tree(" + args + ")" }

void layout::treemap() { this.prev = this.get(); this.current = this.get() + ".treemap(" + args + ")" }

void layout::treemap(string scalar root) { this.prev = this.get(); this.current = this.get() + ".treemap(" + args + ")" }

void layout::value(| string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".value(" + args + ")" }

void layout::value(| string scalar value) { this.prev = this.get(); this.current = this.get() + ".value(" + args + ")" }

void layout::values(| string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".values(" + args + ")" }

void layout::x(| string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".x(" + args + ")" }

void layout::y(| string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".y(" + args + ")" }

end 


