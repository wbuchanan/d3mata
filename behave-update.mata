mata: 

mata clear

class behave {

private: 
string scalar behave, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void center()
void drag()
void event()
void on()
void origin()
void scale()
void scaleExtent()
void size()
void translate()
void x()
void y()
void zoom()
}

void behave::init(string scalar vnm) {
     this.varnm = vnm 
     this.behave = "var " + vnm + " = behave
     this.current = "var " + vnm + " = behave
     this.prev = ""
}

string scalar behave::get() {
     return(this.current) 
}

string scalar behave::complete() {
     return(this.current + ";") 
}

string scalar behave::getVarnm() {
     return(this.varnm) 
}

string scalar behave::recover() {
     return(this.prev) 
}

void behave::center(| string scalar center) { this.prev = this.get(); this.current = this.get() + ".center(" + args + ")" }

void behave::drag() { this.prev = this.get(); this.current = this.get() + ".drag(" + args + ")" }

void behave::event(string scalar selection) { this.prev = this.get(); this.current = this.get() + ".event(" + args + ")" }

void behave::on(string scalar type, string scalar listener) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void behave::on(string scalar type, | string scalar listener) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void behave::origin(| string scalar origin) { this.prev = this.get(); this.current = this.get() + ".origin(" + args + ")" }

void behave::scale(| string scalar scale) { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void behave::scaleExtent(| string scalar extent) { this.prev = this.get(); this.current = this.get() + ".scaleExtent(" + args + ")" }

void behave::size(| string scalar size) { this.prev = this.get(); this.current = this.get() + ".size(" + args + ")" }

void behave::translate(| string scalar translate) { this.prev = this.get(); this.current = this.get() + ".translate(" + args + ")" }

void behave::x(| string scalar x) { this.prev = this.get(); this.current = this.get() + ".x(" + args + ")" }

void behave::y(| string scalar y) { this.prev = this.get(); this.current = this.get() + ".y(" + args + ")" }

void behave::zoom() { this.prev = this.get(); this.current = this.get() + ".zoom(" + args + ")" }

void behave::zoom(string scalar selection) { this.prev = this.get(); this.current = this.get() + ".zoom(" + args + ")" }

end 


