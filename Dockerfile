FROM debian:stretch

LABEL "com.github.actions.name"="Checkout submodules"
LABEL "com.github.actions.description"="Recursively checks out any submodules in your repository"
LABEL "com.github.actions.icon"="github"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/textbook/git-checkout-submodule-action"
LABEL "maintainer"="Jonathan Sharpe <j.r.sharpe+github@gmail.com>"

RUN apt-get -y update && apt-get -y install git && apt-get clean

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
