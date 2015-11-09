mata: 

mata clear

class geom {

private: 
string scalar geom, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void add()
void area()
void centroid()
void clip()
void clipExtent()
void extent()
void find()
void hull()
void links()
void polygon()
void quadtree()
void triangles()
void visit()
void voronoi()
void x()
void y()
}

void geom::init(string scalar vnm) {
     this.varnm = vnm 
     this.geom = "var " + vnm + " = geom
     this.current = "var " + vnm + " = geom
     this.prev = ""
}

string scalar geom::get() {
     return(this.current) 
}

string scalar geom::complete() {
     return(this.current + ";") 
}

string scalar geom::getVarnm() {
     return(this.varnm) 
}

string scalar geom::recover() {
     return(this.prev) 
}

void geom::add(string scalar point) { this.prev = this.get(); this.current = this.get() + ".add(" + args + ")" }

void geom::area() { this.prev = this.get(); this.current = this.get() + ".area(" + args + ")" }

void geom::centroid() { this.prev = this.get(); this.current = this.get() + ".centroid(" + args + ")" }

void geom::clip(string scalar subject) { this.prev = this.get(); this.current = this.get() + ".clip(" + args + ")" }

void geom::clipExtent(| string scalar extent) { this.prev = this.get(); this.current = this.get() + ".clipExtent(" + args + ")" }

void geom::extent(| string scalar extent) { this.prev = this.get(); this.current = this.get() + ".extent(" + args + ")" }

void geom::find(string scalar point) { this.prev = this.get(); this.current = this.get() + ".find(" + args + ")" }

void geom::hull() { this.prev = this.get(); this.current = this.get() + ".hull(" + args + ")" }

void geom::hull(string scalar vertices) { this.prev = this.get(); this.current = this.get() + ".hull(" + args + ")" }

void geom::links(string scalar data) { this.prev = this.get(); this.current = this.get() + ".links(" + args + ")" }

void geom::polygon(string scalar vertices) { this.prev = this.get(); this.current = this.get() + ".polygon(" + args + ")" }

void geom::quadtree() { this.prev = this.get(); this.current = this.get() + ".quadtree(" + args + ")" }

void geom::quadtree(string scalar points), { this.prev = this.get(); this.current = this.get() + ".quadtree(" + args + ")" }

void geom::quadtree(string scalar points, string scalar x1, string scalar y1, string scalar x2, string scalar y2) { this.prev = this.get(); this.current = this.get() + ".quadtree(" + args + ")" }

void geom::quadtree(string scalar points, string scalar x2, string scalar y2), { this.prev = this.get(); this.current = this.get() + ".quadtree(" + args + ")" }

void geom::triangles(string scalar data) { this.prev = this.get(); this.current = this.get() + ".triangles(" + args + ")" }

void geom::visit(string scalar callback) { this.prev = this.get(); this.current = this.get() + ".visit(" + args + ")" }

void geom::voronoi() { this.prev = this.get(); this.current = this.get() + ".voronoi(" + args + ")" }

void geom::voronoi(string scalar data) { this.prev = this.get(); this.current = this.get() + ".voronoi(" + args + ")" }

void geom::x(| string scalar x) { this.prev = this.get(); this.current = this.get() + ".x(" + args + ")" }

void geom::y(| string scalar y) { this.prev = this.get(); this.current = this.get() + ".y(" + args + ")" }

end 


