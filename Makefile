# updates url, version, and sha256 checksum to latest version for project
# example: make release PROJECT=mark
release:
	@mkdir -p ~/.tmp
	$(eval VERSION := $(shell gh release list -R hughbien/$(PROJECT) | head -n1 | cut -f1))
	$(eval VERSION_NOV := $(shell echo $(VERSION) | sed "s/v//"))
	$(eval URL := https://github.com/hughbien/$(PROJECT)/archive/$(VERSION).tar.gz)
	$(eval SHA256 := $(shell wget -q -O ~/.tmp/$(PROJECT).tar.gz $(URL) && sha256sum ~/.tmp/$(PROJECT).tar.gz | cut -d" " -f1))
	@rm -f ~/.tmp/$(PROJECT).tar.gz
	@echo $(VERSION) $(SHA256)
	sed -i "" -E "s#^ +url \".*#  url \"$(URL)\"#" $(PROJECT).rb # url sub
	sed -i "" -E "s/^ +version \".*/  version \"$(VERSION_NOV)\"/" $(PROJECT).rb # version sub
	sed -i "" -E "s/^ +sha256 \".*/  sha256 \"$(SHA256)\"/" $(PROJECT).rb # sha256 sub
