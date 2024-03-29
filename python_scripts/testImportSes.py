import pcbnew
import os
os.chdir("/home/GitHub/pcb_benchmark_devel/")
board1 = pcbnew.LoadBoard("bm1.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ImportSpecctraSES("bm1.unrouted.kicad_pcb.ses", board1)
board1.Save("bm1.routed.kicad_pcb")
board2 = pcbnew.LoadBoard("bm2.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ImportSpecctraSES("bm2.unrouted.kicad_pcb.ses", board2)
board2.Save("bm2.routed.kicad_pcb")
board3 = pcbnew.LoadBoard("bm3.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ImportSpecctraSES("bm3.unrouted.kicad_pcb.ses", board3)
board3.Save("bm3.routed.kicad_pcb")
board4 = pcbnew.LoadBoard("bm4.unrouted.polyRemoved.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ImportSpecctraSES("bm4.unrouted.polyRemoved.kicad_pcb.ses", board4)
board4.Save("bm4.routed.polyRemoved.kicad_pcb")