.PHONY: clone-hiroshi bench bombardier

clone-hiroshi:
	wget \
		-P public \
		--recursive \
		--no-parent \
		http://abehiroshi.la.coocan.jp/

bench:
	ab -n 1000 -c 10 http://localhost:8080/

bombardier:
	bombardier -c 10 -n 1000 http://localhost:8080/			

