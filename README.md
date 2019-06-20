# Checkout Submodule Action

Recursively checks out any submodules in your repository.

```
action "checkout-submodules" {
  uses = "textbook/git-checkout-submodule-action@master"
}
```

## Alternatives

You can use [git Actions][1] instead:

```
action "checkout-submodules" {
  uses = "srt32/git-actions@v0.0.3"
  args = "git submodule update --init --recursive"
}
```

  [1]: https://github.com/marketplace/actions/git-actions
