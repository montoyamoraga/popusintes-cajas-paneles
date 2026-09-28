// bote_caja.scad

include <../comun/caja.scad>
include <../comun/versiones.scad>

// profundidad util para los modulos, desde el piso hasta
// la cara inferior del panel
BOTE_PROFUNDIDAD_UTIL = 90;

module bote_caja(hp = 1) {
  // caja resta una pared (el lip del panel) a la profundidad
  // interior, por eso se la sumamos aca
  caja(hp, BOTE_TEXTO, VERSION,
       profundidad = BOTE_PROFUNDIDAD_UTIL + CAJA_PARED);
}
