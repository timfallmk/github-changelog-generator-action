FROM githubchangeloggenerator/github-changelog-generator:1.16.2

ADD scripts/copy-to-env.sh /usr/local/bin/copy-to-env.sh

RUN chmod +x /usr/local/bin/copy-to-env.sh

ENV CHANGELOG 'blank'

ENTRYPOINT ["copy-to-env.sh"]
