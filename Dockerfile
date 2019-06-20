FROM samueldebruyn/debian-git@sha256:6fda212f1f62ba382143c797d771dee1f4aa505520c277195de5536f2926309f

LABEL "com.github.actions.name"="Checkout submodules"
LABEL "com.github.actions.description"="Recursively checks out any submodules in your repository"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/textbook/git-checkout-submodule-action"
LABEL "maintainer"="Jonathan Sharpe <j.r.sharpe+github@gmail.com>"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
