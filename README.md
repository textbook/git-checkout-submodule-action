> ⛔ **Note** I am no longer maintaining this repository, please use one of the [alternatives](#alternatives) below

# Checkout Submodule Action

Recursively checks out any submodules in your repository.

```yml
steps:
- name: Checkout repository
  uses: actions/checkout@master
- name: Checkout submodules
  uses: textbook/git-checkout-submodule-action@master
```

*New in version 2.1.0.* You can optionally set the [`--remote`][2] flag:

```yml
steps:
- name: Checkout repository
  uses: actions/checkout@v2
- name: Checkout submodules
  uses: textbook/git-checkout-submodule-action@master
  with:
    remote: true
```

## Alternatives

- You can use the `submodules` input to the checkout action:

    ```yml
    steps:
    - name: Checkout repository and submodules
      uses: actions/checkout@v2
      with:
        submodules: recursive
    ```

- just run the command directly:

    ```yml
    steps:
    - name: Checkout repository
      uses: actions/checkout@v2
    - name: Checkout submodules
      run: git submodule update --init --recursive
    ```

- or use [git Actions][1] instead:

    ```yml
    steps:
    - name: Checkout repository
      uses: actions/checkout@v2
    - name: Checkout submodules
      uses: srt32/git-actions@v0.0.3
      with:
        args: git submodule update --init --recursive
    ```

  [1]: https://github.com/marketplace/actions/git-actions
  [2]: https://git-scm.com/docs/git-submodule#Documentation/git-submodule.txt---remote
