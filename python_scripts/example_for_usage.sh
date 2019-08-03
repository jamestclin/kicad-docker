#!/bin/bash

# In run_on_*.sh, "-v $HOME:/home" mapd the host's $HOME to client's /home/
# Make sure your host machine has the testing python scripts and the test cases
# Make sure all the file locations are well coordinated

docker exec -it [container-hash-id] python "/home/GitHub/pcb_benchmark_devel/testExportDsn.py"
docker exec -it [container-hash-id] python "/home/GitHub/pcb_benchmark_devel/testImportSes.py"