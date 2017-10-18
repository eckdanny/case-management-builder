FROM ruby:2.4.2
ENV ENVIRONMENT_REFRESH 2017-10-11
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn && \
	rm -rf /var/lib/apt/lists/*
