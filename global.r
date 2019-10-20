# Created by Matthew A. Birk
# source code: https://rdrr.io/cran/measurements/src/R/conv_unit.R
# Modified by W. Jang


.conversions = data.frame(dim = character(0), unit = character(0), std = numeric(0))
.conversions = rbind(.conversions,
	
	data.frame(dim = 'Angle', unit = 'degree', std = 360),
	data.frame(dim = 'Angle', unit = 'radian', std = 2 * pi),

	data.frame(dim = 'Area', unit = 'cm2', std = 1e4),
	data.frame(dim = 'Area', unit = 'm2', std = 1),
	data.frame(dim = 'Area', unit = 'hectare', std = 1e-4),
	data.frame(dim = 'Area', unit = 'km2', std = 1e-6),
	data.frame(dim = 'Area', unit = 'inch2', std = (100/2.54)^2),
	data.frame(dim = 'Area', unit = 'ft2', std = (100/2.54/12)^2),
	data.frame(dim = 'Area', unit = 'yd2', std = (100/2.54/36)^2),
	data.frame(dim = 'Area', unit = 'acre', std = (100/2.54/12)^2/43560),
	data.frame(dim = 'Area', unit = 'mi2', std = (100/2.54/(12*5280))^2),

	data.frame(dim = 'Length', unit = 'cm', std = 100),
	data.frame(dim = 'Length', unit = 'm', std = 1),
	data.frame(dim = 'Length', unit = 'km', std = 1e-3),
	data.frame(dim = 'Length', unit = 'inch', std = 100/2.54),
	data.frame(dim = 'Length', unit = 'ft', std = 100/2.54/12),
	data.frame(dim = 'Length', unit = 'yd', std = 100/2.54/36),
	data.frame(dim = 'Length', unit = 'mi', std = 100/2.54/12/5280),

	data.frame(dim = 'Mass', unit = 'mg', std = 1e3),
	data.frame(dim = 'Mass', unit = 'g', std = 1),
	data.frame(dim = 'Mass', unit = 'kg', std = 1e-3),
	data.frame(dim = 'Mass', unit = 'Mg', std = 1e-6),
	data.frame(dim = 'Mass', unit = 'metric_ton', std = 1e-6),
	data.frame(dim = 'Mass', unit = 'oz', std = 1/28.349523125),
	data.frame(dim = 'Mass', unit = 'lbs', std = 2.20462234e-3),
	data.frame(dim = 'Mass', unit = 'short_ton', std = 1/907184.74),
	data.frame(dim = 'Mass', unit = 'long_ton', std = 1/1.016e6),
	
	data.frame(dim = 'Tree Density', unit = 'TPH', std = 1/1e-4),
	data.frame(dim = 'Tree Density', unit = 'TPA', std = 1/((100/2.54/12)^2/43560)),
	
	data.frame(dim = 'Mass Density', unit = 'Mg/ha', std = 1e-6/1e-4),
	data.frame(dim = 'Mass Density', unit = 'kg/ha', std = 1e-3/1e-4),
	data.frame(dim = 'Mass Density', unit = 'lbs/acre', std = 2.20462234e-3/((100/2.54/12)^2/43560)),

	data.frame(dim = 'Area Density', unit = 'm2/ha', std = 1/1e-4),
	data.frame(dim = 'Area Density', unit = 'ft2/acre', std = ((100/2.54/12)^2)/((100/2.54/12)^2/43560)),
	               
	data.frame(dim = 'Volume Density', unit = 'm3/ha', std = 1e-3/1e-4),
	data.frame(dim = 'Volume Density', unit = 'ft3/acre', std = (61.0237440947323/12^3)/((100/2.54/12)^2/43560)),
	data.frame(dim = 'Volume Density', unit = 'BF/acre', std = (61.0237440947323/144)/((100/2.54/12)^2/43560)),
	data.frame(dim = 'Volume Density', unit = 'BF/ha', std = (61.0237440947323/144)/(1e-4)),
	data.frame(dim = 'Volume Density', unit = 'MBF/acre', std = (61.0237440947323/144/1000)/((100/2.54/12)^2/43560)),
	data.frame(dim = 'Volume Density', unit = 'MBF/ha', std = (61.0237440947323/144/1000)/(1e-4)),	
		
	data.frame(dim = 'Temperature', unit = 'C', std = NA),
	data.frame(dim = 'Temperature', unit = 'F', std = NA),

	data.frame(dim = 'Volume', unit = 'l', std = 1),
	data.frame(dim = 'Volume', unit = 'cm3', std = 1e3),
	data.frame(dim = 'Volume', unit = 'dm3', std = 1),
	data.frame(dim = 'Volume', unit = 'm3', std = 1e-3),
	data.frame(dim = 'Volume', unit = 'oz', std = 1/3.785411784*128),
	data.frame(dim = 'Volume', unit = 'cup', std = 1/3.785411784*16),
	data.frame(dim = 'Volume', unit = 'pint', std = 1/3.785411784*8),
	data.frame(dim = 'Volume', unit = 'quart', std = 1/3.785411784*4),
	data.frame(dim = 'Volume', unit = 'gal', std = 1/3.785411784),
	data.frame(dim = 'Volume', unit = 'inch3', std = 61.0237440947323),
	data.frame(dim = 'Volume', unit = 'ft3', std = 61.0237440947323/12^3),
	data.frame(dim = 'Volume', unit = 'BF', std = 61.0237440947323/144),
	data.frame(dim = 'Volume', unit = 'MBF', std = 61.0237440947323/144/1000)
	
	)


