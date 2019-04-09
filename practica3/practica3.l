variable 					[A-Za-z]+[0-9]*[_]?[A-Za-z]*[0-9]*

entero 						[+]?[0-9]+
enteroNegativo 		[-]?[0-9]+

decimal 					[+]?[0-9]*["."][0-9]+
decimalNegativo 	[-][0-9]+["."][0-9]+


%%
{variable} {
	printf ("variable");
}

{entero}	{
	printf ("entero");
}

{decimal} {
	printf ("decimal");
}

{enteroNegativo}	{
	printf ("enteroNegativo");
}

{decimalNegativo} {
	printf ("decimalNegativo");
}


({entero}|{decimal})[-]({entero}|{decimal}) {
	printf ("resta");
}

({entero}|{decimal})[+]({entero}|{decimal}) {
	printf ("suma");
}

({entero}|{decimal})[*]({entero}|{decimal}) {
	printf ("multiplicacion");
}

({entero}|{decimal})[/]({entero}|{decimal}) {
	printf ("division");
}

pow[\(]({entero}|{decimal})[,]({entero}|{decimal})[\)] {
	printf ("potencia");
}

pow[\(]({decimalNegativo}|{decimalNegativo})[,]({decimalNegativo}|{decimalNegativo})[\)] {
	printf ("potencia negativa");
}

mod[\(]({entero}|{decimal})[,]({entero}|{decimal})[\)] {
	printf ("modulo");
}

[RaIz][\(]({decimalNegativo}|{decimalNegativo})[,]({decimalNegativo})[\);] {
	printf ("raiz");
}

[RAiZ][\(]({decimalNegativo}|{decimalNegativo})[,]({entero})[\);] {
	printf ("raiz imaginaria");
}
%%
