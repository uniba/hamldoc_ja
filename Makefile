me-translator:
	git fetch origin \
	  && git remote add upstream https://github.com/nex3/haml.git \
	  && echo "To merge from upstream:" \
	  && echo "$$ git pull upstream master"

docs:
	rake doc

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
	  && git add * \
	  && git commit -a \
	  && git push origin gh-pages \
	  && git checkout master \
	  && open http://uniba.jp/hamldoc_ja/docs/yardoc

.PHONY: docs docclean site publish
