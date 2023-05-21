set port=8009
start http://localhost:%port% 
title desp - %port%
mkdocs serve -a localhost:%port%
