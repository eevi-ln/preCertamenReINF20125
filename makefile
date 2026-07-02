help: ## Comando de ayuda
	@echo ""
	@echo "Regla                           Explicación"
	@echo "-----                           -----------"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z0-9_-]+:.*##/ {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo ""

compile: ## Compila el proyecto y genera un archivo .pdf
	@echo "[+] Compilando el proyecto..."
	@typst compile main.typ
	@echo "[+] Proyecto compilado!"

view: ## Permite visualizar el pdf con zathura
	@zathura main.pdf

chapter: ## Crea un nuevo archivo al entregar su nombre $(NAME)
	@touch $(NAME).typ
	@echo '#import "/template.typ": *' >> $(NAME).typ
	@echo >> $(NAME).typ
	@echo '#set text(lang: "es")' >> $(NAME).typ
	@echo >> $(NAME).typ
	@echo >> $(NAME).typ
	@mkdir -p chapters
	@mv $(NAME).typ chapters

