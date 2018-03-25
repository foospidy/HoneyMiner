install:
	apt-get install shellcheck

lint:
	shellcheck -e SC2013 honeyminer
	shellcheck scripts/avg_hash_rate.sh