set port=8000
start http://localhost:%port% 
title desp - %port%
mkdocs serve -a localhost:%port%
