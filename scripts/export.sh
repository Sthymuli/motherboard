#!/usr/bin/env bash
# Export schematic PDF, layout PDF, 3D STEP and 3D renders into exports/.
# Used by .github/workflows/export.yml; also runs locally:
#   scripts/export.sh
#   KICAD_CLI="flatpak run --filesystem=$PWD --command=kicad-cli org.kicad.KiCad" \
#   KICAD_PYTHON="flatpak run --filesystem=$PWD --command=python3 org.kicad.KiCad" scripts/export.sh
set -euo pipefail
cd "$(dirname "$0")/.."

KICAD_CLI=${KICAD_CLI:-kicad-cli}
KICAD_PYTHON=${KICAD_PYTHON:-python3}
NAME=Sthymuli-motherboard
OUT=exports
# temporary board next to the real one so ${KIPRJMOD} model paths still resolve
ONBOARD=_ci_onboard.kicad_pcb
trap 'rm -f "$ONBOARD" _ci_onboard.kicad_prl _ci_onboard.kicad_pro' EXIT

mkdir -p "$OUT"

echo "== Schematic PDF (root sheet + all sub-sheets)"
$KICAD_CLI sch export pdf "$NAME.kicad_sch" --output "$OUT/${NAME}_schematic.pdf"

echo "== Layout PDF (one page per layer)"
$KICAD_CLI pcb export pdf "$NAME.kicad_pcb" --output "$OUT/${NAME}_layout.pdf" \
  --mode-multipage \
  --layers F.SilkS,F.Cu,In1.Cu,In2.Cu,B.Cu,B.SilkS,F.Fab,B.Fab \
  --common-layers Edge.Cuts \
  --include-border-title

echo "== Board copy without the parts parked outside the outline"
$KICAD_PYTHON scripts/onboard_board.py "$NAME.kicad_pcb" "$ONBOARD"
cp "$NAME.kicad_pro" _ci_onboard.kicad_pro

echo "== 3D STEP"
$KICAD_CLI pcb export step "$ONBOARD" --output "$OUT/$NAME.step" --force --subst-models

echo "== 3D renders"
for side in top bottom; do
  $KICAD_CLI pcb render "$ONBOARD" --output "$OUT/${NAME}_3d_${side}.png" \
    --side "$side" --rotate '-35,0,25' --perspective --quality high \
    --background opaque --width 1600 --height 1000
done

ls -la "$OUT"
