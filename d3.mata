mata:

class d3 {

	void						new(), destroy()
	string 				scalar 	d3	
	class	albers		scalar	d3albers()
	class	arc			scalar	d3arc()
	class	area		scalar	d3area()
	class	axis		scalar	d3axis()
	class	brush		scalar	d3brush()
	class	bundle		scalar	d3bundle()
	class	chord		scalar	d3chord()
	class	circle		scalar	d3circle()
	class	clipExtent	scalar	d3clipExtent()
	class	cluster		scalar	d3cluster()
	class	diagonal	scalar	d3diagonal()
	class	dispatch	scalar	d3dispatch()
	class	drag		scalar	d3drag()
	class	ease		scalar	d3ease()
	class	force		scalar	d3force()
	class	format		scalar	d3format()
	class	graticule	scalar	d3graticule()
	class	hcl			scalar	d3hcl()
	class	hierarchy	scalar	d3hierarchy()
	class	histogram	scalar	d3histogram()
	class	hsl			scalar	d3hsl()
	class	hull		scalar	d3hull()
	class	identity	scalar	d3identity()
	class	interpolate	scalar	d3interpolate()
	class	interval	scalar	d3interval()
	class	lab			scalar	d3lab()
	class	line		scalar	d3line()
	class	linear		scalar	d3linear()
	class	locale		scalar	d3locale()
	class	log			scalar	d3log()
	class	map			scalar	d3map()
	class	nest		scalar	d3nest()
	class	ordinal		scalar	d3ordinal()
	class	pack		scalar	d3pack()
	class	partition	scalar	d3partition()
	class	path		scalar	d3path()
	class	pie			scalar	d3pie()
	class	polygon		scalar	d3polygon()
	class	pow			scalar	d3pow()
	class	projection	scalar	d3projection()
	class	quadtree	scalar	d3quadtree()
	class	quantile	scalar	d3quantile()
	class	quantize	scalar	d3quantize()
	class	rgb			scalar	d3rgb()
	class	rotation	scalar	d3rotation()
	class	scale		scalar	d3scale()
	class	selection	scalar	d3selection()
	class	set			scalar	d3set()
	class	stack		scalar	d3stack()
	class	stream		scalar	d3stream()
	class	symbol		scalar	d3symbol()
	class	threshold	scalar	d3threshold()
	class	transform	scalar	d3transform()
	class	transition	scalar	d3transition()
	class	tree		scalar	d3tree()
	class	treemap		scalar	d3treemap()
	class	voronoi		scalar	d3voronoi()
	class	xhr			scalar	d3xhr()
	class	zoom		scalar	d3zoom()
	string 				scalar	get()
	string				scalar  complete()	
	string 				scalar 	ascending(), behavior_drag(), behavior_zoom(), 
								bisect(), bisectLeft(), bisectRight(), 
								bisector(), csv(), csv_parse(), 
								csv_parseRows(), csv_format(), csv_formatRows(),
								descending(), deviation(), dsv(), 
								dsv_parse(), dsv_parseRows(), dsv_format(), 
								dsv_formatRows(), ease(), entries(), event(), 
								extent(), format(), formatPrefix(), functor(), 
								geo_area(), geo_bounds(), geo_centroid(), 
								geo_circle(), geo_distance(), geo_graticule(), 
								geo_interpolate(), geo_length(), geo_path(), 
								geo_rotation(), geo_albersUsa(), geo_albers(), geo_albers_raw(),
								geo_azimuthalEqualArea_raw(), geo_azimuthalEqualArea(), 
								geo_azimuthalEquidistant_raw(), geo_azimuthalEquidistant(), 
								geo_conicConformal_raw(), geo_conicConformal(), 
								geo_conicEqualArea_raw(), geo_conicEqualArea(), 
								geo_conicEquidistant_raw(), geo_conicEquidistant(), 
								geo_equirectangular_raw(), geo_equirectangular(), 
								geo_gnomonic_raw(), geo_gnomonic(), 
								geo_mercator_raw(), geo_mercator(), 
								geo_orthographic(), geo_projectionMutator(), 
								geo_projection(), geo_stereographic_raw(), 
								geo_stereographic(), geo_transverseMercator_raw(), 
								geo_clipExtent(), geo_stream(), geo_transform(),
								geom_voronoi(), geom_quadtree(), geom_polygon(), 
								geom_hull(), hcl(), hsl(), html(), 
								interpolate(), interpolatearay(), 
								interpolateHcl(), interpolateHsl(), 
								interpolateLab(), interpolateNumber(), 
								interpolateObject(), interpolateRgb(), 
								interpolateRound(), interpolateString(), 
								interpolateTransform(), interpolateZoom(), 
								interpolators(), json(), keys(), lab(), 
								layout_bundle(), layout_chord(), layout_cluster(), 
								layout_force(), layout_hierarchy(), layout_histogram(), 
								layout_pack(), layout_partition(), layout_pie(), 
								layout_stack(), layout_tree(), layout_treemap(),
								locale(), map(), max(), mean(), 
								median(), merge(), min(), mouse(), nest(), 
								ns_prefix(), ns_qualify(), pairs(), permute(), 
								quantile(), random_normal(), random_logNormal(),
								random_bates(), random_irwinHall(),
								range(), rebind(), requote(), rgb(), round(), 
								scale_category10(), scale_category20(),
								scale_category20b(), scale_category20c(),
								scale_identity(), scale_linear(), scale_log(), 
								scale_pow(), scale_quantile(), scale_quantize(), 
								scale_sqrt(), scale_threshold(), select(), 
								selectAll(), selection(), 
								set(), shuffle(), sum(), svg_arc(), svg_axis(), 
								svg_brush(), svg_area_radial(), 
								svg_area(), svg_chord(), svg_diagonal_radial(), 
								svg_diagonal(), svg_line_radial(), svg_line(), 
								svg_symbolTypes(), svg_symbol(), text(),  
								timer(), timer_flush(), touch(), touches(), 
								transform(), transition(), transpose(), tsv(),
								tsv_parse(), tsv_parseRows(), tsv_format(), 
								tsv_formatRows(), values(), variance(), xhr(), 
								xml(), zip(), time_format(), fime_format_iso(), 
								time_format_multi(), time_format_utc(), 
								time_scale(), time_scale_utc(),
								time_dayOfYear(), time_days(), time_day(), 
								time_mondayOfYear(), time_mondays(), time_monday(), 
								time_tuesdayOfYear(), time_tuesdays(), time_tuesday(), 
								time_wednesdayOfYear(), time_wednesdays(), time_wednesday(), 
								time_thursdayOfYear(), time_thursdays(), time_thursday(), 
								time_fridayOfYear(), time_fridays(), time_friday(), 
								time_saturdayOfYear(), time_saturdays(), time_saturday(), 
								time_sundayOfYear(), time_sundays(), time_sunday(),
								time_hours(), time_hour(), time_interval(), 
								time_minutes(), time_minute(), time_seconds(), 
								time_second(), time_week(), time_weeks(), time_years(), 
								time_year()

	
}

void d3::new() {

	this.d3 = "var d3 = d3";

}

string scalar d3::get() {
	return(this.d3)
}

string scalar d3::complete() {
	string scalar object
	object = this.get() + ";"
	return(object)
}

class d3albers scalar d3albers() {
		 class d3albers scalar Albers
         Albers =  d3albers()
         return(Albers)
}


class d3arc scalar d3arc() {
		 class d3arc scalar Arc
         Arc =  d3arc()
         return(Arc)
}


class d3area scalar d3area() {
		 class d3area scalar Area
         Area =  d3area()
         return(Area)
}


class d3axis scalar d3axis() {
		 class d3axis scalar Axis
         Axis =  d3axis()
         return(Axis)
}


class d3brush scalar d3brush() {
		 class d3brush scalar Brush
         Brush =  d3brush()
         return(Brush)
}


class d3bundle scalar d3bundle() {
		 class d3bundle scalar Bundle
         Bundle =  d3bundle()
         return(Bundle)
}


class d3chord scalar d3chord() {
		 class d3chord scalar Chord
         Chord = d3chord()
         return(Chord)
}


class d3circle scalar d3circle() {
		 class d3circle scalar Circle
         Circle = d3circle()
         return(Circle)
}


class d3clipExtent scalar d3clipExtent() {
		 class d3clipExtent scalar Clipextent
         Clipextent = d3clipExtent()
         return(Clipextent)
}


class d3cluster scalar d3cluster() {
		 class d3cluster scalar Cluster
         Cluster = d3cluster()
         return(Cluster)
}


class d3diagonal scalar d3diagonal() {
		 class d3diagonal scalar Diagonal
         Diagonal = d3diagonal()
         return(Diagonal)
}


class d3dispatch scalar d3dispatch() {
		 class d3dispatch scalar Dispatch
         Dispatch = d3dispatch()
         return(Dispatch)
}


class d3drag scalar d3drag() {
		 class d3drag scalar Drag
         Drag = d3drag()
         return(Drag)
}


class d3ease scalar d3ease() {
		 class d3ease scalar Ease
         Ease = d3ease()
         return(Ease)
}


class d3force scalar d3force() {
		 class d3force scalar Force
         Force = d3force()
         return(Force)
}


class d3format scalar d3format() {
		 class d3format scalar Format
         Format = d3format()
         return(Format)
}


class d3graticule scalar d3graticule() {
		 class d3graticule scalar Graticule
         Graticule = d3graticule()
         return(Graticule)
}


class d3hcl scalar d3hcl() {
		 class d3hcl scalar Hcl
         Hcl = d3hcl()
         return(Hcl)
}


class d3hierarchy scalar d3hierarchy() {
		 class d3hierarchy scalar Hierarchy
         Hierarchy = d3hierarchy()
         return(Hierarchy)
}


class d3histogram scalar d3histogram() {
		 class d3histogram scalar Histogram
         Histogram = d3histogram()
         return(Histogram)
}


class d3hsl scalar d3hsl() {
		 class d3hsl scalar Hsl
         Hsl = d3hsl()
         return(Hsl)
}


class d3hull scalar d3hull() {
		 class d3hull scalar Hull
         Hull = d3hull()
         return(Hull)
}


class d3identity scalar d3identity() {
		 class d3identity scalar Identity
         Identity = d3identity()
         return(Identity)
}


class d3interpolate scalar d3interpolate() {
		 class d3interpolate scalar Interpolate
         Interpolate = d3interpolate()
         return(Interpolate)
}


class d3interval scalar d3interval() {
		 class d3interval scalar Interval
         Interval = d3interval()
         return(Interval)
}


class d3lab scalar d3lab() {
		 class d3lab scalar Lab
         Lab = d3lab()
         return(Lab)
}


class d3line scalar d3line() {
		 class d3line scalar Line
         Line = d3line()
         return(Line)
}


class d3linear scalar d3linear() {
		 class d3linear scalar Linear
         Linear = d3linear()
         return(Linear)
}


class d3locale scalar d3locale() {
		 class d3locale scalar Locale
         Locale = d3locale()
         return(Locale)
}


class d3log scalar d3log() {
		 class d3log scalar Log
         Log = d3log()
         return(Log)
}


class d3map scalar d3map() {
		 class d3map scalar Map
         Map = d3map()
         return(Map)
}


class d3nest scalar d3nest() {
		 class d3nest scalar Nest
         Nest = d3nest()
         return(Nest)
}


class d3ordinal scalar d3ordinal() {
		 class d3ordinal scalar Ordinal
         Ordinal = d3ordinal()
         return(Ordinal)
}


class d3pack scalar d3pack() {
		 class d3pack scalar Pack
         Pack = d3pack()
         return(Pack)
}


class d3partition scalar d3partition() {
		 class d3partition scalar Partition
         Partition = d3partition()
         return(Partition)
}


class d3path scalar d3path() {
		 class d3path scalar Path
         Path = d3path()
         return(Path)
}


class d3pie scalar d3pie() {
		 class d3pie scalar Pie
         Pie = d3pie()
         return(Pie)
}


class d3polygon scalar d3polygon() {
		 class d3polygon scalar Polygon
         Polygon = d3polygon()
         return(Polygon)
}


class d3pow scalar d3pow() {
		 class d3pow scalar Pow
         Pow = d3pow()
         return(Pow)
}


class d3projection scalar d3projection() {
		 class d3projection scalar Projection
         Projection = d3projection()
         return(Projection)
}


class d3quadtree scalar d3quadtree() {
		 class d3quadtree scalar Quadtree
         Quadtree = d3quadtree()
         return(Quadtree)
}


class d3quantile scalar d3quantile() {
		 class d3quantile scalar Quantile
         Quantile = d3quantile()
         return(Quantile)
}


class d3quantize scalar d3quantize() {
		 class d3quantize scalar Quantize
         Quantize = d3quantize()
         return(Quantize)
}


class d3rgb scalar d3rgb() {
		 class d3rgb scalar Rgb
         Rgb = d3rgb()
         return(Rgb)
}


class d3rotation scalar d3rotation() {
		 class d3rotation scalar Rotation
         Rotation = d3rotation()
         return(Rotation)
}


class d3scale scalar d3scale() {
		 class d3scale scalar Scale
         Scale = d3scale()
         return(Scale)
}


class d3selection scalar d3selection() {
		 class d3selection scalar Selection
         Selection = d3selection()
         return(Selection)
}


class d3set scalar d3set() {
		 class d3set scalar Set
         Set = d3set()
         return(Set)
}


class d3stack scalar d3stack() {
		 class d3stack scalar Stack
         Stack = d3stack()
         return(Stack)
}


class d3stream scalar d3stream() {
		 class d3stream scalar Stream
         Stream = d3stream()
         return(Stream)
}


class d3symbol scalar d3symbol() {
		 class d3symbol scalar Symbol
         Symbol = d3symbol()
         return(Symbol)
}


class d3threshold scalar d3threshold() {
		 class d3threshold scalar Threshold
         Threshold = d3threshold()
         return(Threshold)
}


class d3transform scalar d3transform() {
		 class d3transform scalar Transform
         Transform = d3transform()
         return(Transform)
}


class d3transition scalar d3transition() {
		 class d3transition scalar Transition
         Transition = d3transition()
         return(Transition)
}


class d3tree scalar d3tree() {
		 class d3tree scalar Tree
         Tree = d3tree()
         return(Tree)
}


class d3treemap scalar d3treemap() {
		 class d3treemap scalar Treemap
         Treemap = d3treemap()
         return(Treemap)
}


class d3voronoi scalar d3voronoi() {
		 class d3voronoi scalar Voronoi
         Voronoi = d3voronoi()
         return(Voronoi)
}


class d3xhr scalar d3xhr() {
		 class d3xhr scalar Xhr
         Xhr = d3xhr()
         return(Xhr)
}


class d3zoom scalar d3zoom() {
		 class d3zoom scalar Zoom
         Zoom = d3zoom()
         return(Zoom)
}

string scalar d3::ascending(string scalar a, string scalar b) {
        string scalar Ascending
        Ascending = this.get() + ".ascending(" + a + ", " + b + ")" 
        return(Ascending)
}


string scalar d3::behavior_drag(string scalar varnm) {
        string scalar Behavior
        Behavior = "var " + varnm + " = " + this.get() + ".behavior.drag();" 
        return(Behavior)
}


string scalar d3::behavior_zoom(string scalar varnm) {
        string scalar Behavior
        Behavior = "var " + varnm + " = " + this.get() + ".behavior.zoom();" 
        return(Behavior)
}


string scalar d3::bisect(string scalar aray, string scalar x, |				 ///   
						 string scalar lo, string scalar hi) {
        
		string scalar Bisect
		
		if (lo != "" & hi == "") {
			Bisect = this.get() + ".bisect(" + aray + ", " + x + ", " + lo + ")"
        }
		else if (lo != "" & hi != "") {
			Bisect = this.get() + ".bisect(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
		}
		else {
			Bisect = this.get() + ".bisect(" + aray + ", " + x + ")"
		}
		
		return(Bisect)
}


string scalar d3::bisectLeft(string scalar aray, string scalar x, |			 ///   
							 string scalar lo, string scalar hi) {
        
		string scalar BisectLeft
		
		if (lo != "" & hi == "") {
			BisectLeft = this.get() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ")"
        }
		else if (lo != "" & hi != "") {
			BisectLeft = this.get() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
		}
		else {
			BisectLeft = this.get() + ".bisectLeft(" + aray + ", " + x + ")"
		}
		
		return(BisectLeft)
}


string scalar d3::bisectRight(string scalar aray, string scalar x, |		 ///   
							 string scalar lo, string scalar hi) {
		string scalar BisectRight
		
		if (lo != "" & hi == "") {
			BisectRight = this.get() + ".bisectRight(" + aray + ", " + x + ", " + lo + ")"
        }
		else if (lo != "" & hi != "") {
			BisectRight = this.get() + ".bisectRight(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
		}
		else {
			BisectRight = this.get() + ".bisectRight(" + aray + ", " + x + ")"
		}
		
		return(BisectRight)
}


string scalar d3::bisector(string scalar accomp) {
        string scalar Bisector
        Bisector = this.get() + ".bisector(" + accomp + ")" 
        return(Bisector)
}


string scalar d3::csv(string scalar url, | string scalar accessor, 
					  string scalar callback) {
        string scalar Csv
		if (accessor != "" & callback == "") {
			Csv = this.get() + ".csv(" + url + ", " + accessor + ")" 
		}
		else if (accessor != "" & callback == "") {
			Csv = this.get() + ".csv(" + url + ", " + accessor + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Csv = this.get() + ".csv(" + url + ")"		
		}
        return(Csv)
}

string scalar d3::csv_parse(string scalar strng, | string scalar accessor) {
		string scalar CsvParse
		if (accessor != "") {
			CsvParse = this.get() + ".csv.parse(" + strng + ", " + accessor + ")"
		}
		else {
			CsvParse = this.get() + ".csv.parse(" + strng + ")"
		}
		
		return(CsvParse)
}

string scalar d3::csv_parseRows(string scalar strng, | string scalar accessor) {
		string scalar CsvParseRows
		if (accessor != "") {
			CsvParseRows = this.get() + ".csv.parseRows(" + strng + ", " + accessor + ")"
		}
		else {
			CsvParseRows = this.get() + ".csv.parseRows(" + strng + ")"
		}
		return(CsvParseRows)
}

string scalar d3::csv_format(string scalar rows) {
		string scalar CsvFormat
		CsvFormat = this.get() + ".csv.format(" + rows + ")"
		return(CsvFormat)
}

string scalar d3::csv_formatRows(string scalar rows) {
		string scalar CsvFormatRows
		CsvFormatRows = this.get() + ".csv.formatRows(" + rows + ")"
		return(CsvFormatRows)
}


string scalar d3::descending(string scalar a, string scalar b) {
        string scalar Descending
        Descending = this.get() + ".descending(" + a + ", " + b + ")"
        return(Descending)
}


string scalar d3::deviation(string scalar aray, | string scalar accessor) {
        string scalar Deviation
		if (accessor != "") { 
			Deviation = this.get() + ".deviation(" + aray + ", " + accessor + ")" 
        }
		else {
			Deviation = this.get() + ".deviation(" + aray + ")"
		}
		return(Deviation)
}


string scalar d3::dsv(string scalar url, | string scalar accessor, 
					  string scalar callback) {
        string scalar Dsv
		if (accessor != "" & callback == "") {
			Dsv = this.get() + ".dsv(" + url + ", " + accessor + ")" 
		}
		else if (accessor != "" & callback == "") {
			Dsv = this.get() + ".dsv(" + url + ", " + accessor + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Dsv = this.get() + ".dsv(" + url + ")"		
		}
        return(dsv)
}

string scalar d3::dsv_parse(string scalar strng, | string scalar accessor) {
		string scalar DsvParse
		if (accessor != "") {
			DsvParse = this.get() + ".dsv.parse(" + strng + ", " + accessor + ")"
		}
		else {
			DsvParse = this.get() + ".dsv.parse(" + strng + ")"
		}
		return(DsvParse)
}

string scalar d3::dsv_parseRows(string scalar strng, | string scalar accessor) {
		string scalar DsvParseRows
		if (accessor != "") {
			DsvParseRows = this.get() + ".dsv.parseRows(" + strng + ", " + accessor + ")"
		}
		else {
			DsvParseRows = this.get() + ".dsv.parseRows(" + strng + ")"
		}
		return(DsvParseRows)
}

string scalar d3::dsv_format(string scalar rows) {
		string scalar dsvFormat
		dsvFormat = this.get() + ".dsv.format(" + rows + ")"
		return(dsvFormat)
}

string scalar d3::dsv_formatRows(string scalar rows) {
		string scalar dsvFormatRows
		dsvFormatRows = this.get() + ".dsv.formatRows(" + rows + ")"
		return(dsvFormatRows)
}


string scalar d3::ease(string scalar type, | string scalar arguments) {
		/* legal types:
		linear, poly(k), quad, cubic, sin, exp, circle, elastic(a, p), 
		back(s), bounce */
		string scalar Ease
        
		if ((type != "linear" & type != "quad" & type != "cubic" & 			 ///   
		type != "sin" & type != "exp" & type != "circle" & type != "bounce") ///   
		& ((strmatch(type, "poly*") != 1) & (strmatch(type, "elastic*") != 1) ///   
		& (strmatch(type, "back*") != 1)) {
			Ease = this.get()
		}
		else {
			if (arguments != "") {
				Ease = this.get + ".ease(" + type + ", " + arguments + ")"
			} 
			else {
				Ease = this.get() + ".ease(" + type + ")"
			}
		}
         
        return(Ease)
}


string scalar d3::entries(string scalar object) {
        string scalar Entries
        Entries = this.get() + ".entries(" + object + ")"
        return(Entries)
}


string scalar d3::event() {
        string scalar Event
        Event = this.get() + ".event" 
        return(Event)
}


string scalar d3::extent(string scalar aray, | string scalar accessor) {
        string scalar Extent
		if (accessor != "") {
			Extent = this.get() + ".extent(" + aray + ", " + accessor + ")" 
        }
		else {
			Extent = this.get() + ".extent(" + aray + ")" 
		}
		return(Extent)
}


string scalar d3::format(string scalar specifier) {
        string scalar Format
        Format = this.get() + ".format(" + specifier + ")" 
        return(Format)
}


string scalar d3::formatPrefix(string scalar value, | string scalar precision) {
        string scalar Formatprefix
		if (precision != "") {
			Formatprefix = this.get() + ".formatPrefix(" + value + ", " + precision + ")" 
        }
		else {
			Formatprefix = this.get() + ".formatPrefix(" + value + ")" 
		}
		return(Formatprefix)
}


string scalar d3::functor(string scalar value) {
        string scalar Functor
        Functor = this.get() + ".functor(" + value + ")" 
        return(Functor)
}


string scalar d3::geo_area(string scalar feature) {
        string scalar Geo
        Geo = this.get() + ".geo.area(" + feature + ")"
        return(Geo)
}


string scalar d3::geo_bounds(string scalar feature) {
        string scalar Geo
        Geo = this.get() + ".geo.bounds(" + feature + ")" 
        return(Geo)
}


string scalar d3::geo_centroid(string scalar feature) {
        string scalar Geo
        Geo = this.get() + ".geo.centroid(" + feature + ")"
        return(Geo)
}


string scalar d3::geo_circle() {
        string scalar Geo
        Geo = this.get() + ".geo.circle" 
        return(Geo)
}


string scalar d3::geo_distance(string scalar a, string scalar b) {
        string scalar Geo
        Geo = this.get() + ".geo.distance(" + a + ", " + b + ")" 
        return(Geo)
}


string scalar d3::geo_graticule() {
        string scalar Geo
        Geo = this.get() + ".geo.graticule" 
        return(Geo)
}


string scalar d3::geo_interpolate(string scalar a, string scalar b) {
        string scalar Geo
        Geo = this.get() + ".geo.interpolate(" + a + ", " + b + ")" 
        return(Geo)
}


string scalar d3::geo_length(string scalar feature) {
        string scalar Geo
        Geo = this.get() + ".geo.length(" + feature + ")" 
        return(Geo)
}


string scalar d3::geo_path() {
        string scalar Geo
        Geo = this.get() + ".geo.path()" 
        return(Geo)
}


string scalar d3::geo_rotation(string scalar rotate) {
        string scalar Geo
        Geo = this.get() + ".geo.rotation(" + rotate + ")" 
        return(Geo)
}



string scalar d3::geo_albersUsa() {
        string scalar Geo
        Geo = this.get() + ".geo.albersUsa()" 
        return(Geo)
}


string scalar d3::geo_albers_raw(string scalar phi0, string scalar phi1) {
        string scalar Geo
        Geo = this.get() + ".geo.albers.raw(" + phi0 + ", " + phi1 + ")" 
        return(Geo)
}



string scalar d3::geo_albers() {
        string scalar Geo
        Geo = this.get() + ".geo.albers()" 
        return(Geo)
}


string scalar d3::geo_azimuthalEqualArea_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.azimuthalEqualArea()" 
        return(Geo)
}


string scalar d3::geo_azimuthalEqualArea() {
        string scalar Geo
        Geo = this.get() + ".geo.azimuthalEqualArea()" 
        return(Geo)
}


string scalar d3::geo_azimuthalEquidistant_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.azimuthalEquidistant()" 
        return(Geo)
}


string scalar d3::geo_azimuthalEquidistant() {
        string scalar Geo
        Geo = this.get() + ".geo.azimuthalEquidistant()" 
        return(Geo)
}


string scalar d3::geo_conicConformal_raw(string scalar phi0, string scalar phi1) {
        string scalar Geo
        Geo = this.get() + ".geo.conicConformal.raw(" + phi0 + ", " + phi1 + ")"  
        return(Geo)
}


string scalar d3::geo_conicConformal() {
        string scalar Geo
        Geo = this.get() + ".geo.conicConformal()" 
        return(Geo)
}


string scalar d3::geo_conicEqualArea_raw(string scalar phi0, string scalar phi1) {
        string scalar Geo
        Geo = this.get() + ".geo.conicEqualArea.raw(" + phi0 + ", " + phi1 + ")" 
        return(Geo)
}


string scalar d3::geo_conicEqualArea() {
        string scalar Geo
        Geo = this.get() + ".geo.conicEqualArea()" 
        return(Geo)
}


string scalar d3::geo_conicEquidistant_raw(string scalar phi0, string scalar phi1) {
        string scalar Geo
        Geo = this.get() + ".geo.conicEquidistant.raw(" + phi0 + ", " + phi1 + ")" 
        return(Geo)
}


string scalar d3::geo_conicEquidistant() {
        string scalar Geo
        Geo = this.get() + ".geo.conicEquidistant()" 
        return(Geo)
}


string scalar d3::geo_equirectangular_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.equirectangular.raw" 
        return(Geo)
}


string scalar d3::geo_equirectangular() {
        string scalar Geo
        Geo = this.get() + ".geo.equirectangular()" 
        return(Geo)
}


string scalar d3::geo_gnomonic_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.gnomonic.raw" 
        return(Geo)
}


string scalar d3::geo_gnomonic() {
        string scalar Geo
        Geo = this.get() + ".geo.gnomonic()" 
        return(Geo)
}


string scalar d3::geo_mercator_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.mercator.raw" 
        return(Geo)
}


string scalar d3::geo_mercator() {
        string scalar Geo
        Geo = this.get() + ".geo.mercator()" 
        return(Geo)
}


string scalar d3::geo_orthographic_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.orthographic.raw" 
        return(Geo)
}


string scalar d3::geo_orthographic() {
        string scalar Geo
        Geo = this.get() + ".geo.orthographic()" 
        return(Geo)
}


string scalar d3::geo_projectionMutator() {
        string scalar Geo
        Geo = this.get() + ".geo" 
        return(Geo)
}


string scalar d3::geo_projection() {
        string scalar Geo
        Geo = this.get() + ".geo" 
        return(Geo)
}


string scalar d3::geo_stereographic_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.stereographic.raw" 
        return(Geo)
}


string scalar d3::geo_stereographic() {
        string scalar Geo
        Geo = this.get() + ".geo.stereographic()" 
        return(Geo)
}


string scalar d3::geo_transverseMercator_raw() {
        string scalar Geo
        Geo = this.get() + ".geo.transverseMercator.raw" 
        return(Geo)
}


string scalar d3::geo_clipExtent() {
        string scalar Geo
        Geo = this.get() + ".geo.clipExtent()" 
        return(Geo)
}


string scalar d3::geo_stream(string scalar object, string scalar listener) {
        string scalar Geo
        Geo = this.get() + ".geo.stream(" + object + ", " + listener + ")" 
        return(Geo)
}


string scalar d3::geo_transform(string scalar methods) {
        string scalar Geo
        Geo = this.get() + ".geo.transform(" + methods + ")" 
        return(Geo)
}


string scalar d3::geom_voronoi() {
        string scalar Geom
        Geom = this.get() + ".geom.voronoi()" 
        return(Geom)
}


string scalar d3::geom_quadtree() {
        string scalar Geom
        Geom = this.get() + ".geom.quadtree()" 
        return(Geom)
}


string scalar d3::geom_polygon(string scalar vertices) {
        string scalar Geom
        Geom = this.get() + ".geom.polygon(" + vertices + ")" 
        return(Geom)
}


string scalar d3::geom_hull() {
        string scalar Geom
        Geom = this.get() + ".geom.hull()" 
        return(Geom)
}

/* This is where current TODO Begins */

string scalar d3::hcl(string scalar h, | string scalar c, string scalar l) {
        string scalar Hcl
		
		// constructor can only have 1 or three arguments
        Hcl = this.get() + ".hcl(" + h + ", " + c + ", " + l + ")" 
        return(Hcl)
}


string scalar d3::hsl(string scalar h, | string scalar s, string scalar l) {
        string scalar Hsl
        Hsl = this.get() + ".hsl(" + h + ", " + s + ", " + l + ")"
        return(Hsl)
}


string scalar d3::html(string scalar url, | string scalar callback) {
        string scalar Html
		if (callback != "") {
			Html = this.get() + ".html(" + url + ", " + callback + ")" 
		}
		else {
			Html = this.get() + ".html(" + url + ")"		
		}
        return(Html)
}


string scalar d3::interpolate(string scalar a, string scalar b) {
        string scalar Interpolate
        Interpolate = this.get() + ".interpolate(" + a + ", " + b + ")" 
        return(Interpolate)
}


string scalar d3::interpolatearay(string scalar a, string scalar b) {
        string scalar Interpolatearay
        Interpolatearay = this.get() + ".interpolatearay(" + a + ", " + b + ")"  
        return(Interpolatearay)
}


string scalar d3::interpolateHcl(string scalar a, string scalar b) {
        string scalar Interpolatehcl
        Interpolatehcl = this.get() + ".interpolateHcl(" + a + ", " + b + ")" 
        return(Interpolatehcl)
}


string scalar d3::interpolateHsl(string scalar a, string scalar b) {
        string scalar Interpolatehsl
        Interpolatehsl = this.get() + ".interpolateHsl(" + a + ", " + b + ")"  
        return(Interpolatehsl)
}


string scalar d3::interpolateLab(string scalar a, string scalar b) {
        string scalar Interpolatelab
        Interpolatelab = this.get() + ".interpolateLab(" + a + ", " + b + ")"  
        return(Interpolatelab)
}


string scalar d3::interpolateNumber(string scalar a, string scalar b) {
        string scalar Interpolatenumber
        Interpolatenumber = this.get() + ".interpolateNumber(" + a + ", " + b + ")"  
        return(Interpolatenumber)
}


string scalar d3::interpolateObject(string scalar a, string scalar b) {
        string scalar Interpolateobject
        Interpolateobject = this.get() + ".interpolateObject(" + a + ", " + b + ")"  
        return(Interpolateobject)
}


string scalar d3::interpolateRgb(string scalar a, string scalar b) {
        string scalar Interpolatergb
        Interpolatergb = this.get() + ".interpolateRgb(" + a + ", " + b + ")" 
        return(Interpolatergb)
}


string scalar d3::interpolateRound(string scalar a, string scalar b) {
        string scalar Interpolateround
        Interpolateround = this.get() + ".interpolateRound(" + a + ", " + b + ")" 
        return(Interpolateround)
}


string scalar d3::interpolateString(string scalar a, string scalar b) {
        string scalar Interpolatestring
        Interpolatestring = this.get() + ".interpolateString(" + a + ", " + b + ")" 
        return(Interpolatestring)
}


string scalar d3::interpolateTransform(string scalar a, string scalar b) {
        string scalar Interpolatetransform
        Interpolatetransform = this.get() + ".interpolateTransform(" + a + ", " + b + ")"  
        return(Interpolatetransform)
}


string scalar d3::interpolateZoom(string scalar a, string scalar b) {
        string scalar Interpolatezoom
        Interpolatezoom = this.get() + ".interpolateZoom(" + a + ", " + b + ")" 
        return(Interpolatezoom)
}


string scalar d3::interpolators() {
        string scalar Interpolators
        Interpolators = this.get() + ".interpolators" 
        return(Interpolators)
}


string scalar d3::json(string scalar url, | string scalar callback) {
        string scalar Json
		if (callback != "") {
			Json = this.get() + ".json(" + url + ", " + callback + ")" 
		}
		else {
			Json = this.get() + ".json(" + url + ")"		
		}
        return(Json)
}


string scalar d3::keys(string scalar object) {
        string scalar Keys
        Keys = this.get() + ".keys(" + object + ")" 
        return(Keys)
}


string scalar d3::lab(string scalar l, | string scalar a, string scalar b) {
        string scalar Lab
		// Constructor can only have 1 or 3 arguments
        Lab = this.get() + ".lab(" + l + ", " + a + ", " + b + ")"
        return(Lab)
}


string scalar d3::layout_bundle() {
        string scalar Layout
        Layout = this.get() + ".layout.bundle()" 
        return(Layout)
}


string scalar d3::layout_chord() {
        string scalar Layout
        Layout = this.get() + ".layout.chord()" 
        return(Layout)
}


string scalar d3::layout_cluster() {
        string scalar Layout
        Layout = this.get() + ".layout.cluster()" 
        return(Layout)
}


string scalar d3::layout_force() {
        string scalar Layout
        Layout = this.get() + ".layout.force()" 
        return(Layout)
}


string scalar d3::layout_hierarchy() {
        string scalar Layout
        Layout = this.get() + ".layout.hierarchy()" 
        return(Layout)
}


string scalar d3::layout_histogram() {
        string scalar Layout
        Layout = this.get() + ".layout.histogram()" 
        return(Layout)
}


string scalar d3::layout_pack() {
        string scalar Layout
        Layout = this.get() + ".layout.pack()" 
        return(Layout)
}


string scalar d3::layout_partition() {
        string scalar Layout
        Layout = this.get() + ".layout.partition()" 
        return(Layout)
}


string scalar d3::layout_pie() {
        string scalar Layout
        Layout = this.get() + ".layout.pie()" 
        return(Layout)
}


string scalar d3::layout_stack() {
        string scalar Layout
        Layout = this.get() + ".layout.stack()" 
        return(Layout)
}


string scalar d3::layout_tree() {
        string scalar Layout
        Layout = this.get() + ".layout.tree()" 
        return(Layout)
}


string scalar d3::layout_treemap() {
        string scalar Layout
        Layout = this.get() + ".layout.treemap()" 
        return(Layout)
}


string scalar d3::locale(string scalar definition) {
        string scalar Locale
        Locale = this.get() + ".locale(" + definition + ")" 
        return(Locale)
}


string scalar d3::map(string scalar object, | string scalar key) {
        string scalar Map
        Map = this.get() + ".map(" + object + ", " + key + ")"
        return(Map)
}


string scalar d3::max(string scalar aray, | string scalar accessor) {
        string scalar Max
        Max = this.get() + ".max(" + aray + ", " + accessor + ")" 
        return(Max)
}


string scalar d3::mean(string scalar aray, | string scalar accessor) {
        string scalar Mean
        Mean = this.get() + ".mean(" + aray + ", " + accessor + ")" 
        return(Mean)
}


string scalar d3::median(string scalar aray, | string scalar accessor) {
        string scalar Median
        Median = this.get() + ".median(" + aray + ", " + accessor + ")" 
        return(Median)
}


string scalar d3::merge(string scalar arays) {
        string scalar Merge
        Merge = this.get() + ".merge(" + arays + ")" 
        return(Merge)
}


string scalar d3::min(string scalar aray, | string scalar accessor) {
        string scalar Min
        Min = this.get() + ".min(" + aray + ", " + accessor + ")" 
        return(Min)
}


string scalar d3::mouse(string scalar container) {
        string scalar Mouse
        Mouse = this.get() + ".mouse(" + container + ")" 
        return(Mouse)
}


string scalar d3::nest() {
        string scalar Nest
        Nest = this.get() + ".nest()" 
        return(Nest)
}


string scalar d3::ns_prefix() {
        string scalar Ns
        Ns = this.get() + ".ns.prefix" 
        return(Ns)
}


string scalar d3::ns_qualify(string scalar name) {
        string scalar Ns
        Ns = this.get() + ".ns.qualify(" + name + ")"
        return(Ns)
}


string scalar d3::pairs(string scalar aray) {
        string scalar Pairs
        Pairs = this.get() + ".pairs(" + aray + ")" 
        return(Pairs)
}


string scalar d3::permute(string scalar aray, string scalar indexes) {
        string scalar Permute
        Permute = this.get() + ".permute(" + aray + ", " + indexes + ")" 
        return(Permute)
}


string scalar d3::quantile(string scalar numbers, string scalar p) {
        string scalar Quantile
        Quantile = this.get() + ".quantile(" + numbers + ", " + p + ")" 
        return(Quantile)
}


string scalar d3::random_normal(| string scalar mean, string scalar sd) {
        string scalar Random
        Random = this.get() + ".random.normal(" + mean + ", " + sd + ")" 
        return(Random)
}


string scalar d3::random_logNormal(| string scalar mean, string scalar sd) {
        string scalar Random
        Random = this.get() + ".random.logNormal(" + mean + ", " + sd + ")" 
        return(Random)
}


string scalar d3::random_bates(string scalar count) {
        string scalar Random
        Random = this.get() + ".random.bates(" + count + ")" 
        return(Random)
}


string scalar d3::random_irwinHall(string scalar count) {
        string scalar Random
        Random = this.get() + ".random.irwinHall(" + count + ")" 
        return(Random)
}


string scalar d3::range(string scalar stop, | string scalar start, ///   
						string scalar step) {
						
		if (start == "") {
			start = "0"
		}
		if (step == "") {
			step = "1"
		}
        string scalar Range
        Range = this.get() + ".range" 
        return(Range)
}


string scalar d3::rebind(string scalar target, string scalar source,		 ///   
						string scalar names) {
        string scalar Rebind
        Rebind = this.get() + ".rebind(" + target + ", " + source + ", " + names + ")" 
        return(Rebind)
}


string scalar d3::requote(string scalar strng) {
        string scalar Requote
        Requote = this.get() + ".requote(" + strng + ")" 
        return(Requote)
}


string scalar d3::rgb(string scalar r, | string scalar g, string scalar b) {
        string scalar Rgb
        Rgb = this.get() + ".rgb(" + r + ", " + g + ", " + b + ")"
        return(Rgb)
}


string scalar d3::round(string scalar x, | string scalar n) {
        string scalar Round
        Round = this.get() + ".round(" + x + ", " + n + ")" 
        return(Round)
}

string scalar d3::scale_category10() {
        string scalar Scale
        Scale = this.get() + ".scale.category10()" 
        return(Scale)
}


string scalar d3::scale_category20() {
        string scalar Scale
        Scale = this.get() + ".scale.category20()" 
        return(Scale)
}


string scalar d3::scale_category20b() {
        string scalar Scale
        Scale = this.get() + ".scale.category20b()" 
        return(Scale)
}


string scalar d3::scale_category20c() {
        string scalar Scale
        Scale = this.get() + ".scale.category20c()" 
        return(Scale)
}


string scalar d3::scale_identity() {
        string scalar Scale
        Scale = this.get() + ".scale.identity()" 
        return(Scale)
}


string scalar d3::scale_linear() {
        string scalar Scale
        Scale = this.get() + ".scale.linear()" 
        return(Scale)
}


string scalar d3::scale_log() {
        string scalar Scale
        Scale = this.get() + ".scale.log()" 
        return(Scale)
}


string scalar d3::scale_pow() {
        string scalar Scale
        Scale = this.get() + ".scale.pow()" 
        return(Scale)
}


string scalar d3::scale_quantile() {
        string scalar Scale
        Scale = this.get() + ".scale.quantile()" 
        return(Scale)
}


string scalar d3::scale_quantize() {
        string scalar Scale
        Scale = this.get() + ".scale.quantize()" 
        return(Scale)
}


string scalar d3::scale_sqrt() {
        string scalar Scale
        Scale = this.get() + ".scale.sqrt()" 
        return(Scale)
}


string scalar d3::scale_threshold() {
        string scalar Scale
        Scale = this.get() + ".scale.threshold()" 
        return(Scale)
}


string scalar d3::select(string scalar node) {
        string scalar Select
        Select = this.get() + ".select(" + node + ")" 
        return(Select)
}


string scalar d3::selectAll(string scalar selector) {
        string scalar Selectall
        Selectall = this.get() + ".selectAll(" + selector + ")" 
        return(Selectall)
}


string scalar d3::selection() {
        string scalar Selection
        Selection = this.get() + ".selection()" 
        return(Selection)
}


string scalar d3::set(string scalar aray) {
        string scalar Set
        Set = this.get() + ".set(" + aray + ")" 
        return(Set)
}


string scalar d3::shuffle(string scalar aray, | string scalar lo,  ///   
						  string scalar hi) {
        string scalar Shuffle
        Shuffle = this.get() + ".shuffle" 
        return(Shuffle)
}


string scalar d3::sum(string scalar aray, | string scalar accessor) {
        string scalar Sum
        Sum = this.get() + ".sum(" + aray + ", " + accessor + ")" 
        return(Sum)
}


string scalar d3::svg_arc() {
        string scalar Svg
        Svg = this.get() + ".svg.arc()" 
        return(Svg)
}


string scalar d3::svg_area_radial() {
        string scalar Svg
        Svg = this.get() + ".svg.area.radial()" 
        return(Svg)
}


string scalar d3::svg_area() {
        string scalar Svg
        Svg = this.get() + ".svg.area()" 
        return(Svg)
}


string scalar d3::svg_axis() {
        string scalar Svg
        Svg = this.get() + ".svg.axis()" 
        return(Svg)
}


string scalar d3::svg_brush() {
        string scalar Svg
        Svg = this.get() + ".svg.brush()" 
        return(Svg)
}


string scalar d3::svg_chord() {
        string scalar Svg
        Svg = this.get() + ".svg.chord()" 
        return(Svg)
}


string scalar d3::svg_diagonal_radial() {
        string scalar Svg
        Svg = this.get() + ".svg.diagonal.radial()" 
        return(Svg)
}


string scalar d3::svg_diagonal() {
        string scalar Svg
        Svg = this.get() + ".svg.diagonal()" 
        return(Svg)
}


string scalar d3::svg_line_radial() {
        string scalar Svg
        Svg = this.get() + ".svg.line.radial()" 
        return(Svg)
}


string scalar d3::svg_line() {
        string scalar Svg
        Svg = this.get() + ".svg.line()" 
        return(Svg)
}


string scalar d3::svg_symbolTypes() {
        string scalar Svg
        Svg = this.get() + ".svg.symbolTypes" 
        return(Svg)
}


string scalar d3::svg_symbol() {
        string scalar Svg
        Svg = this.get() + ".svg.symbol()" 
        return(Svg)
}


string scalar d3::text(string scalar url, | string scalar mimeType,			 ///   
					   string scalar callback) {
        string scalar Text
		
		if (mimeType != "" & callback == "") {
			Text = this.get() + ".text(" + url + ", " + mimeType + ")" 
		}
		else if (mimeType != "" & callback == "") {
			Text = this.get() + ".text(" + url + ", " + mimeType + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Text = this.get() + ".text(" + url + ")"		
		}
		return(Text)
}


string scalar d3::time_format(string scalar specifier) {
        string scalar Time
        Time = this.get() + ".time.format(" + specifier + ")" 
        return(Time)
}


string scalar d3::time_format_iso() {
        string scalar Time
        Time = this.get() + ".time.format.iso" 
        return(Time)
}


string scalar d3::time_format_multi(string scalar formats) {
        string scalar Time
        Time = this.get() + ".time.format.multi(" + formats + ")" 
        return(Time)
}


string scalar d3::time_format_utc(string scalar specifier) {
        string scalar Time
        Time = this.get() + ".time.format.utc(" + specifier + ")" 
        return(Time)
}


string scalar d3::time_scale() {
        string scalar Time
        Time = this.get() + ".time.scale()" 
        return(Time)
}


string scalar d3::time_scale_utc(string scalar formats) {
        string scalar Time
        Time = this.get() + ".time.scale.utc()"
        return(Time)
}


string scalar d3::timer(string scalar func, | string scalar delay, 
						string scalar time) {
        string scalar Timer
        Timer = this.get() + ".timer(" + func + ", " + delay + ", " + time + ")" 
        return(Timer)
}

string scalar d3::timer_flush() {
        string scalar TimerFlush
        TimerFlush = this.get() + ".timer.flush()" 
        return(TimerFlush)
}


string scalar d3::touch(string scalar container, | string scalar touches, 
						string scalar identifier) {
        string scalar Touch
        Touch = this.get() + ".touch(" + container + ", " + touches + ", " + 
				identifier + ")"
        return(Touch)
}


string scalar d3::touches(string scalar container, | string scalar touches) {
        string scalar Touches
        Touches = this.get() + ".touches(" + container + ", " + touches + ")" 
        return(Touches)
}


string scalar d3::transform(string scalar strng) {
        string scalar Transform
        Transform = this.get() + ".transform(" + strng + ")" 
        return(Transform)
}


string scalar d3::transition(string scalar selection, | string scalar name) {
        string scalar Transition
        Transition = this.get() + ".transition" 
        return(Transition)
}


string scalar d3::transpose(string scalar mtrix) {
        string scalar Transpose
        Transpose = this.get() + ".transpose(" + mtrix + ")" 
        return(Transpose)
}


string scalar d3::tsv(string scalar url, | string scalar accessor, 
					  string scalar callback) {
        string scalar Tsv
		if (accessor != "" & callback == "") {
			Tsv = this.get() + ".tsv(" + url + ", " + accessor + ")" 
		}
		else if (accessor != "" & callback == "") {
			Tsv = this.get() + ".tsv(" + url + ", " + accessor + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Tsv = this.get() + ".tsv(" + url + ")"		
		}
        return(Tsv)
}

string scalar d3::tsv_parse(string scalar strng, | string scalar accessor) {
		string scalar tsvParse
		tsvParse = this.get() + ".tsv.parse(" + strng + ", " + accessor + ")"
		return(tsvParse)
}

string scalar d3::tsv_parseRows(string scalar strng, | string scalar accessor) {
		string scalar tsvParseRows
		tsvParseRows = this.get() + ".tsv.parseRows(" + strng + ", " + accessor + ")"
		return(tsvParseRows)
}

string scalar d3::tsv_format(string scalar rows) {
		string scalar tsvFormat
		tsvFormat = this.get() + ".tsv.format(" + rows + ")"
		return(tsvFormat)
}

string scalar d3::tsv_formatRows(string scalar rows) {
		string scalar tsvFormatRows
		tsvFormatRows = this.get() + ".tsv.formatRows(" + rows + ")"
		return(tsvFormatRows)
}


string scalar d3::values(string scalar object) {
        string scalar Values
        Values = this.get() + ".values(" + object + ")" 
        return(Values)
}


string scalar d3::variance(string scalar aray, | string scalar accessor) {
        string scalar Variance
        Variance = this.get() + ".variance(" + aray + ", " + accessor + ")" 
        return(Variance)
}


string scalar d3::xhr(string scalar url, | string scalar mimeType,			 ///   
					  string scalar callback) {
        string scalar Xhr
		if (mimeType != "" & callback == "") {
			Xhr = this.get() + ".xhr(" + url + ", " + mimeType + ")" 
		}
		else if (mimeType != "" & callback == "") {
			Xhr = this.get() + ".xhr(" + url + ", " + mimeType + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Xhr = this.get() + ".xhr(" + url + ")"		
		}
        return(Xhr)
}


string scalar d3::xml(string scalar url, | string scalar mimeType,			 ///   
					  string scalar callback) {
        string scalar Xml
		if (mimeType != "" & callback == "") {
			Xml = this.get() + ".xml(" + url + ", " + mimeType + ")" 
		}
		else if (mimeType != "" & callback == "") {
			Xml = this.get() + ".xml(" + url + ", " + mimeType + ", " +  	 ///   
					callback + ")"		
		}
		else {
			Xml = this.get() + ".xml(" + url + ")"		
		}
        return(Xml)
}


string scalar d3::zip(string scalar arays) {
        string scalar Zip
        Zip = this.get() + ".zip(" + arays + ")" 
        return(Zip)
}

string scalar d3::time_day() {
	string scalar d3time
	d3time = this.get() + ".time.day"
	return(d3time)
}
 
string scalar d3::time_monday() {
	string scalar d3time
	d3time = this.get() + ".time.monday"
	return(d3time)
}
 
 
string scalar d3::time_tuesday() {
	string scalar d3time
	d3time = this.get() + ".time.tuesday"
	return(d3time)
}
 
string scalar d3::time_wednesday() {
	string scalar d3time
	d3time = this.get() + ".time.wednesday"
	return(d3time)
}
 

string scalar d3::time_thursday() {
	string scalar d3time
	d3time = this.get() + ".time.thursday"
	return(d3time)
}
 

string scalar d3::time_friday() {
	string scalar d3time
	d3time = this.get() + ".time.friday"
	return(d3time)
}
 

string scalar d3::time_saturday() {
	string scalar d3time
	d3time = this.get() + ".time.saturday"
	return(d3time)
}
 

string scalar d3::time_sunday() {
	string scalar d3time
	d3time = this.get() + ".time.sunday"
	return(d3time)
}
 

string scalar d3::time_hour() {
	string scalar d3time
	d3time = this.get() + ".time.hour"
	return(d3time)
}
 

string scalar d3::time_interval(string scalar interval) {
	string scalar d3time
	if (interval == "second") {
		d3time = d3::time_second() 
	} else if (interval == "minute") {	
		d3time = d3::time_minute() 
	} else if (interval == "hour") {
		d3time = d3::time_hour() 
	} else if (interval == "day") {	
		d3time = d3::time_day() 
	} else if (interval == "week") {
		d3time = d3::time_week() 
	} else if (interval == "sunday") {	
		d3time = d3::time_sunday() 
	} else if (interval == "monday") {	
		d3time = d3::time_monday() 
	} else if (interval == "tuesday") {	
		d3time = d3::time_tuesday() 
	} else if (interval == "wednesday") {	
		d3time = d3::time_wednesday() 
	} else if (interval == "thursday") {	
		d3time = d3::time_thursday() 
	} else if (interval == "friday") {	
		d3time = d3::time_friday() 
	} else if (interval == "saturday") {	
		d3time = d3::time_saturday() 
	} else if (interval == "month") {	
		d3time = d3::time_month() 
	} else if (interval == "year") {	
		d3time = d3::time_year() 
	} else {
		d3time = this.get()
	}
	return(d3time)
}
 

string scalar d3::time_minute() {
	string scalar d3time
	d3time = this.get() + ".time.minute"
	return(d3time)
}
 

string scalar d3::time_second() {
	string scalar d3time
	d3time = this.get() + ".time.second"
	return(d3time)
}
 

string scalar d3::time_week() {
	string scalar d3time
	d3time = this.get() + ".time.week"
	return(d3time)
}
 

string scalar d3::time_year() {
	string scalar d3time
	d3time = this.get() + ".time.year"
	return(d3time)
}
 

string scalar d3::time_days(string scalar start, string scalar stop, |		 ///   
							string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.days(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}

string scalar d3::time_mondays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.mondays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_tuesdays(string scalar start, string scalar stop, |	 ///   
								string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.tuesdays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_wednesdays(string scalar start, string scalar stop, | ///   
								  string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.wednesdays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_thursdays(string scalar start, string scalar stop, |	 ///   
								 string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.thursdays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_fridays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.fridays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_saturdays(string scalar start, string scalar stop, |	 ///   
								 string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.saturdays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_sundays(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.sundays(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_hours(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.hours(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_minutes(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.minutes(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_seconds(string scalar start, string scalar stop, |	 ///   
							   string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.seconds(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_weeks(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.weeks(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_years(string scalar start, string scalar stop, |		 ///   
							 string scalar step) {
	if (step == "") step = "1"						
	string scalar d3time
	d3time = this.get() + ".time.years(" + start + ", " + stop + ", " + step + ")"
	return(d3time)
}


string scalar d3::time_dayOfYear(string scalar date) { 
	string scalar d3time
	d3time = this.get() + ".time.dayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_mondayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.mondayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_tuesdayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.tuesdayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_wednesdayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.wednesdayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_thursdayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.thursdayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_fridayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.fridayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_saturdayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.saturdayOfYear(" + date + ")"
	return(d3time)
}


string scalar d3::time_sundayOfYear(string scalar date) {
	string scalar d3time
	d3time = this.get() + ".time.sundayOfYear(" + date + ")"
	return(d3time)
}



end

