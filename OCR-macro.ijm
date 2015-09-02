if (nImages>0) 
{
	name = getTitle();
	print("Nombre: " + name);
} 

if (name == "Crotal_Bovino_PM_Hembra1.TIF") // Crotales.ijm
{
// 1) Cambiar a 8-bit
run("8-bit");

// 2) Umbralizar
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(60, 90);
setOption("BlackBackground", false);
run("Convert to Mask");
//run("Close");

// 3) Suavizado 
run("Gaussian Blur...", "sigma=2");

// 4) Tocar contrastes
//run("Brightness/Contrast...");
setMinAndMax(100, 154);
run("Apply LUT");
//run("Close");
}
else if (name == "Crotal-oficial.TIF") // Crotales6.ijm
{
// 1) Convertir a 8-bit
run("8-bit");

// 2) umbralizar...
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(109, 121);
setOption("BlackBackground", false);
run("Convert to Mask");
//run("Close");

// 3) Suavizar...
run("Gaussian Blur...", "sigma=4");

// 4) Contrastes
//run("Brightness/Contrast...");
setMinAndMax(36, 87);
run("Apply LUT");
}
else if (name == "Crotal9.TIF") // Crotales4.ijm
{
//1) Convertir a 8 bit
run("8-bit");

// 2) Añadir contraste
//run("Brightness/Contrast...");
setMinAndMax(71, 217);
run("Apply LUT");
//run("Close");

// 3) Umbralizar
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(3, 151);
run("Convert to Mask");
setThreshold(255, 255);
//run("Close");

// 4) Suavizar
run("Gaussian Blur...", "sigma=5");

// 5) Contrastes
//run("Brightness/Contrast...");
setMinAndMax(137, 141);
run("Apply LUT");
//run("Close");

// 6) Suavizar
run("Gaussian Blur...", "sigma=5");

// 7) Contrastes
//run("Brightness/Contrast...");
setMinAndMax(226, 229);
run("Apply LUT");
//run("Close");
}
else if ((name == "Crotal4.TIF") || (name == "Crotal7.TIF")) // Crotales3.ijm
{
// 1) hacer 8-bit...
run("8-bit");

// 2) Umbralizar...
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(35, 52);
setOption("BlackBackground", false);
run("Convert to Mask");
//run("Close");

// 3) Suavizar...
run("Gaussian Blur...", "sigma=3");

// 4) Brillo y contraste
//run("Brightness/Contrast...");
setMinAndMax(157, 159);
run("Apply LUT");
}
else if ((name == "Crotal5.TIF") || (name == "Crotal6.TIF")) // Crotales5.ijm
{
// 1) Hacer 8 bit..
run("8-bit");

// 2) umbralizar...
setAutoThreshold("Default");
//run("Threshold...");
setAutoThreshold("Default dark");
//setThreshold(54, 80);
setThreshold(54, 80);
run("Convert to Mask");
//run("Close");

// 3) Suavizar
run("Gaussian Blur...", "sigma=5");

// 4) Minimizar
run("Minimum...", "radius=3");

// 5) Contraste
//run("Brightness/Contrast...");
setMinAndMax(134, 141);
run("Apply LUT");
//run("Close");
}
else if (name == "Crotal1.TIF" || name == "Crotal2.TIF" || name == "Crotal3.TIF" || name == "Crotal8.TIF") // Crotales2.ijm
{
// 1) Convertir a 8-bit
run("8-bit");

// 2) Umbralizar
setAutoThreshold("Default");
//run("Threshold...");
setThreshold(31, 77); // quitar si algo va mal
setOption("BlackBackground", false);
run("Convert to Mask");
//run("Close");

// 3) Suavizar
run("Gaussian Blur...", "sigma=4");

// 4) Contraste
//run("Brightness/Contrast...");
setMinAndMax(226, 245); // quitar si algo va mal
run("Apply LUT");
//run("Close");
}