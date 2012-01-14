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

publish:
	git checkout gh-pages \
	  && git add . \
	  && git commit -a \
	  && git push origin gh-pages

.PHONY: docs docclean site publish
