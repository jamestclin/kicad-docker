import pcbnew
import os
os.chdir("/home/GitHub/pcb_benchmark_devel/")
board1 = pcbnew.LoadBoard("bm1.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ExportSpecctraDSN("bm1.unrouted.kicad_pcb.dsn", board1)
board2 = pcbnew.LoadBoard("bm2.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ExportSpecctraDSN("bm2.unrouted.kicad_pcb.dsn", board2)
board3 = pcbnew.LoadBoard("bm3.unrouted.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ExportSpecctraDSN("bm3.unrouted.kicad_pcb.dsn", board3)
board4 = pcbnew.LoadBoard("bm4.unrouted.polyRemoved.kicad_pcb", pcbnew.IO_MGR.KICAD_SEXP)
pcbnew.ExportSpecctraDSN("bm4.unrouted.polyRemoved.kicad_pcb.dsn", board4)