#!/usr/bin/env python3
"""Save a copy of a KiCad board with every footprint outside the Edge.Cuts
outline removed (parts parked off-board for the JLC BOM/placement).

Used by CI so the 3D render and STEP export only show what is on the board.

Usage: python3 scripts/onboard_board.py IN.kicad_pcb OUT.kicad_pcb
OUT should sit next to IN so ${KIPRJMOD} model paths still resolve.
"""
import os
import sys

import pcbnew


def main(src, dst):
    board = pcbnew.LoadBoard(src)
    outline = pcbnew.SHAPE_POLY_SET()
    if not board.GetBoardPolygonOutlines(outline, False):
        sys.exit("board outline (Edge.Cuts) is not closed")

    def on_board(fp):
        for p in (fp.GetPosition(), fp.GetBoundingBox(False).GetCenter()):
            pt = pcbnew.VECTOR2I(p.x, p.y)
            if any(outline.COutline(i).PointInside(pt) for i in range(outline.OutlineCount())):
                return True
        return False

    removed = [fp for fp in board.GetFootprints() if not on_board(fp)]
    for fp in removed:
        board.Remove(fp)
    kept = sorted(fp.GetReference() for fp in board.GetFootprints())
    print(f"kept {len(kept)} footprints: {' '.join(kept)}")
    print(f"removed {len(removed)} off-board footprints")
    pcbnew.SaveBoard(dst, board)
    # skip interpreter teardown: SWIG prints hundreds of harmless
    # "memory leak of type FOOTPRINT *" lines for the removed footprints
    sys.stdout.flush()
    os._exit(0)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    main(sys.argv[1], sys.argv[2])
