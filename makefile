all: README.md

README.md: guessinggame.sh
	echo "# Proyecto: Juego de adivinar archivos" > README.md
	echo "" >> README.md
	echo "Fecha y hora de ejecución: $$(date)" >> README.md
	echo "Número de líneas en guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

