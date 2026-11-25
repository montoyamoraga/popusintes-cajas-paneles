// plantilla_panel.scad
// plantilla de panel para un modulo en su propio repositorio, con los
// agujeros copiados de su placa de kicad. ver plantilla.scad para como
// usarla
//
// la placa va centrada en el panel, vista de frente. las posiciones son
// los centros de los footprints en kicad (eje de cada potenciometro,
// barril de cada jack), convertidas a porcentajes de layout

// en el repositorio del modulo:
// include <../../terceros/popusintes-cajas-paneles/comun/comun.scad>
include <../comun/comun.scad>
include <./versiones.scad>

// borde de la placa en coordenadas de kicad, en mm
PLANTILLA_PCB_X0 = 30;
PLANTILLA_PCB_Y0 = 30;
PLANTILLA_PCB_ANCHO = 25;
PLANTILLA_PCB_ALTO = 100;

// coordenadas de kicad (y hacia abajo) a porcentajes de layout
function plantilla_px(x_pcb, ancho) = (x_pcb - PLANTILLA_PCB_X0 + (ancho - PLANTILLA_PCB_ANCHO) / 2) / ancho;
function plantilla_py(y_pcb, alto) = (y_pcb - PLANTILLA_PCB_Y0 + (alto - PLANTILLA_PCB_ALTO) / 2) / alto;

module plantilla_panel() {
  ancho = MODULO_ANCHO * PLANTILLA_HP;
  alto  = MODULO_ALTURA_3U;
  profundidad = PLANTILLA_PANEL_PROFUNDIDAD;

  // potenciometros: [x, y] en kicad
  POTES = [[37.8, 70], [37.8, 90]];

  // jacks: [x, y] en kicad
  JACKS = [[49.5, 70], [49.5, 90], [49.5, 110]];

  difference() {
    panel_base(ancho, alto, profundidad);

    union() {
      agujeros_tornillos(ancho, alto, espesor = profundidad, ambos_lados = false, elipse = true);

      for (p = POTES)
        agujero_perilla(ancho, alto, plantilla_px(p[0], ancho), plantilla_py(p[1], alto));

      for (p = JACKS) {
        agujero_jack(ancho, alto, plantilla_px(p[0], ancho), plantilla_py(p[1], alto));
        rebaje_jack(ancho, alto, plantilla_px(p[0], ancho), plantilla_py(p[1], alto),
          profundidad, PLANTILLA_JACK_REBAJE_HONDO);
      }
    }
  }
}
