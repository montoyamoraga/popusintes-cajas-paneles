// versiones.scad

// version del panel. sigue la version de la placa con la que calza:
// v<mayor>.<menor> rev-<letra>
VERSION = "v0.1 rev-a";

PLANTILLA_TEXTO = "plantilla";
PLANTILLA_HP = 5;

// espesor del panel, mas grueso que PANEL_PROFUNDIDAD (2.4 mm) para
// que no se doble. el rebaje de los jacks crece en la misma medida,
// asi el jack sigue viendo 1.2 mm de panel y la tuerca la misma rosca
PLANTILLA_PANEL_PROFUNDIDAD = 3.0;
PLANTILLA_JACK_REBAJE_HONDO = PLANTILLA_PANEL_PROFUNDIDAD - (PANEL_PROFUNDIDAD - JACK_REBAJE_HONDO);

// versiones
//
// v0.1 rev-a: <mes> <anho>. primer panel, para la placa
// <modulo>-v-0-rev-a
