site:
	rm -fr /tmp/doc \
	  && cp -fr doc /tmp/doc \
	  && git checkout gh-pages \
	  && cp -fr /tmp/doc . \
	  && echo "done"

.PHONY: site
