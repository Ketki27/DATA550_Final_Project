# Variables
RMD_FILE = COVID19_Report.Rmd
OUTPUT_DIR = output
FINAL_REPORT_HTML = $(OUTPUT_DIR)/COVID19_Report.html

# Rule for building HTML report
$(FINAL_REPORT_HTML): $(RMD_FILE)
	Rscript -e 'rmarkdown::render("$<", output_dir = "$(OUTPUT_DIR)", output_format = "html_document")'

# Phony target to generate HTML report
report: $(FINAL_REPORT_HTML)

# Phony target to clean generated files
clean:
	rm -rf $(OUTPUT_DIR)

# Phony target to run all tasks
all: clean report

# Phony target to show help message
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  report       Generate final HTML report"
	@echo "  clean        Clean generated files"
	@echo "  all          Clean and generate HTML report"
