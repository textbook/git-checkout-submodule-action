# Checkout Submodule Action

Recursively checks out any submodules in your repository.

```yml
steps:
- name: Checkout submodules
  uses: textbook/git-checkout-submodule-action@master
```

## Alternatives

You can use [git Actions][1] instead:

```yml
steps:
- name: Checkout submodules
  uses: srt32/git-actions@v0.0.3
  with:
    args: git submodule update --init --recursive
```

  [1]: https://github.com/marketplace/actions/git-actions
