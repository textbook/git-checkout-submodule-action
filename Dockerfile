FROM samueldebruyn/debian-git@sha256:6fda212f1f62ba382143c797d771dee1f4aa505520c277195de5536f2926309f

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
