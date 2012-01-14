docs:
	yard

docclean:
	rm -frv doc

site:
	rm -fr /tmp/doc \
	  && cp -fr doc /tmp/doc \
	  && git checkout gh-pages \
	  && mkdir -p docs/yardoc \
	  && cp -fr /tmp/doc/* docs/yardoc  \
	  && echo "done"

.PHONY: docs docclean site
