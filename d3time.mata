mata:

mata: 

class d3time { 
    private   	string  		scalar    	time
    void                			        new(), destroy(), init()
    public   	string  		scalar    	get()
    public    	string  		scalar    	complete() 
	class		d3timeformat	scalar		format()
	class		d3timescale		scalar		scale()
	void									dayOfYear()
	void									days()
	void									day()
	void									mondayOfYear()
	void									mondays()
	void									monday()
	void									tuesdayOfYear()
	void									tuesdays()
	void									tuesday()
	void									wednesdayOfYear()
	void									wednesdays()
	void									wednesday()
	void									thursdayOfYear()
	void									thursdays()
	void									thursday()
	void									fridayOfYear()
	void									fridays()
	void									friday() 
	void									saturdayOfYear()
	void									saturdays()
	void									saturday()
	void									sundayOfYear()
	void									sundays()
	void									sunday()
	void									hours()
	void									hour()
	void									interval()
	void									minutes()
	void									minute()
	void									seconds()
	void									second()
	void									week() 
	void									weeks()
	void									month() 
	void									months() 
	void									years()
	void									year()
}

string scalar d3time::get() { 
    return(this.time)
}

string scalar d3time::complete() { 
    string scalar timeObject 
    timeObject = this.get() + ";"
    return(timeObject)
}

void d3time::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.time = "var " + vnm + " = " + arguments
	}
	else {
		this.time = vnm
	}
}

void d3time::new() {
}

void d3time::destroy() {
}

class d3timeformat scalar d3time::format(string scalar varnm, string scalar specifier) {
	class d3timeformat scalar Time
	Time = d3timeformat()
	Time.init(varnm, specifier)
	return(Time)
}


class d3timescale scalar d3time::scale(string scalar varnm, string scalar arguments) {
	class d3timescale scalar Time
	Time = d3timescale()
	Time.init(varnm, arguments)
	return(Time)
}


void d3time::day() {
	this.time = this.get() + ".day"
}
 

void d3time::month() {
	this.time = this.get() + ".month"
}
 
 
void d3time::monday() {
	this.time = this.get() + ".monday"
}
 
 
void d3time::tuesday() {
	this.time = this.get() + ".tuesday"
}
 
void d3time::wednesday() {
	this.time = this.get() + ".wednesday"
}
 

void d3time::thursday() {
	this.time = this.get() + ".thursday"
}
 

void d3time::friday() {
	this.time = this.get() + ".friday"
}
 

void d3time::saturday() {
	this.time = this.get() + ".saturday"
}
 

void d3time::sunday() {
	this.time = this.get() + ".sunday"
}
 

void d3time::hour() {
	this.time = this.get() + ".hour"
}
 

void d3time::interval(string scalar interval) {
	if (interval == "second") {
		this.time = this.second() 
	} 
	else if (interval == "minute") {	
		this.time = this.minute() 
	} 
	else if (interval == "hour") {
		this.time = this.hour() 
	} 
	else if (interval == "day") {	
		this.time = this.day() 
	} 
	else if (interval == "week") {
		this.time = this.week() 
	} 
	else if (interval == "sunday") {	
		this.time = this.sunday() 
	} 
	else if (interval == "monday") {	
		this.time = this.monday() 
	} 
	else if (interval == "tuesday") {	
		this.time = this.tuesday() 
	} 
	else if (interval == "wednesday") {	
		this.time = this.wednesday() 
	} 
	else if (interval == "thursday") {	
		this.time = this.thursday() 
	} 
	else if (interval == "friday") {	
		this.time = this.friday() 
	} 
	else if (interval == "saturday") {	
		this.time = this.saturday() 
	} 
	else if (interval == "month") {	
		this.time = this.month() 
	} 
	else if (interval == "year") {	
		this.time = this.year() 
	} 
	else {
		this.time = this.get()
	}
}
 

void d3time::minute() {
	this.time = this.get() + ".minute"
}
 

void d3time::second() {
	this.time = this.get() + ".second"
}
 

void d3time::week() {
	this.time = this.get() + ".week"
}
 

void d3time::year() {
	this.time = this.get() + ".year"
}
 

void d3time::days(string scalar start, string scalar stop, |		 ///   
							string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".days(" + start + ", " + stop + ", " + step + ")"
}

void d3time::mondays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".mondays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::tuesdays(string scalar start, string scalar stop, |	 ///   
								string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".tuesdays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::wednesdays(string scalar start, string scalar stop, | ///   
								  string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".wednesdays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::thursdays(string scalar start, string scalar stop, |	 ///   
								 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".thursdays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::fridays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".fridays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::saturdays(string scalar start, string scalar stop, |	 ///   
								 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".saturdays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::sundays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".sundays(" + start + ", " + stop + ", " + step + ")"
}


void d3time::hours(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".hours(" + start + ", " + stop + ", " + step + ")"
}


void d3time::minutes(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".minutes(" + start + ", " + stop + ", " + step + ")"
}


void d3time::seconds(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"
	this.time = this.get() + ".seconds(" + start + ", " + stop + ", " + step + ")"
}


void d3time::weeks(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".weeks(" + start + ", " + stop + ", " + step + ")"
}


void d3time::months(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".months(" + start + ", " + stop + ", " + step + ")"
}


void d3time::years(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	this.time = this.get() + ".years(" + start + ", " + stop + ", " + step + ")"
}


void d3time::dayOfYear(string scalar date) { 
	this.time = this.get() + ".dayOfYear(" + date + ")"
}


void d3time::mondayOfYear(string scalar date) {
	this.time = this.get() + ".mondayOfYear(" + date + ")"
}


void d3time::tuesdayOfYear(string scalar date) {
	this.time = this.get() + ".tuesdayOfYear(" + date + ")"
}


void d3time::wednesdayOfYear(string scalar date) {
	this.time = this.get() + ".wednesdayOfYear(" + date + ")"
}


void d3time::thursdayOfYear(string scalar date) {
	this.time = this.get() + ".thursdayOfYear(" + date + ")"
}


void d3time::fridayOfYear(string scalar date) {
	this.time = this.get() + ".fridayOfYear(" + date + ")"
}


void d3time::saturdayOfYear(string scalar date) {
	this.time = this.get() + ".saturdayOfYear(" + date + ")"
}


void d3time::sundayOfYear(string scalar date) {
	this.time = this.get() + ".sundayOfYear(" + date + ")"
}


end
