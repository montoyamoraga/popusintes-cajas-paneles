// plantilla.scad
// punto de partida para el panel de un modulo que vive en su propio
// repositorio (como atenu o suma), usando este repositorio como
// submodulo en terceros/popusintes-cajas-paneles. para usarla:
//
// 1. copiar esta carpeta a panel/<modulo>-v-0-rev-a/ en el repositorio
//    del modulo
// 2. renombrar plantilla por el nombre del modulo, en los nombres de
//    archivo y dentro de ellos (PLANTILLA_ en mayusculas)
// 3. cambiar el include de <modulo>_panel.scad a la ruta del submodulo
// 4. copiar de kicad el borde de la placa y las posiciones de
//    potenciometros y jacks

$fn = 32;

include <./plantilla_panel.scad>

plantilla_panel();
