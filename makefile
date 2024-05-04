# Variables
RMD_FILE = COVID19_Report.Rmd
OUTPUT_DIR = output
FINAL_REPORT_HTML = $(OUTPUT_DIR)/COVID19_Report.html

# Rule for building HTML report
$(FINAL_REPORT_HTML): $(RMD_FILE)
	Rscript -e 'rmarkdown::render("$<", output_dir = "$(OUTPUT_DIR)", output_format = "html_document")'

# Phony target to generate HTML report
.PHONY: report
report: $(FINAL_REPORT_HTML)

# Phony target to clean generated files
.PHONY: clean
clean:
	rm -rf $(OUTPUT_DIR)

# Phony target to run all tasks
.PHONY: all
all: clean report

# Rule for knitting Rmd to HTML
.PHONY: %.html
%.html: %.Rmd
    Rscript -e 'rmarkdown::render("$<", output_dir = "$(OUTPUT_DIR)", output_format = "html_document")'

.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"
	
# Phony target to show help message
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  report       Generate final HTML report"
	@echo "  clean        Clean generated files"
	@echo "  all          Clean and generate HTML report"
	@echo "  HTML_FILE    Knit R Markdown to HTML (e.g., make COVID19_Report.html)"
	
# DOCKER-ASSOCIATED RULES (rule to run container)
report:
    docker run -v ketki27/project_image

