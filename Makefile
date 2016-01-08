.PHONY: clean All

All:
	@echo "----------Building project:[ JSaw - Debug ]----------"
	@cd "JSaw" && "$(MAKE)" -f  "JSaw.mk"
clean:
	@echo "----------Cleaning project:[ JSaw - Debug ]----------"
	@cd "JSaw" && "$(MAKE)" -f  "JSaw.mk" clean
