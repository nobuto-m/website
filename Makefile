.PHONY: build
build:
	./bin/build.sh --tidy=true

.PHONY: build-bare
build-bare:
	./bin/build.sh

.PHONY: build-trim-blank-lines
build-trim-blank-lines:
	./bin/build.sh --trim-blank-lines=true

.PHONY: view
view:
	./bin/view.sh

.PHONY: new-post-en
new-post-en:
	./bin/new-post.sh en

.PHONY: new-post-ja
new-post-ja:
	./bin/new-post.sh ja

.PHONY: install-local-hugo
install-local-hugo:
	./bin/install-local-hugo.sh '$(version)'
