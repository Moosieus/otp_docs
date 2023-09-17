# OTP Docs
My attempt to run [github.com/wojtekmach/otp_docs](https://github.com/wojtekmach/otp_docs) in which I got mad at shell scripting and used Elixir instead. Intended for exploring [this issue](https://github.com/elixir-lang/ex_doc/issues/1333).

## Usage
```elixir
OTPDocs.generate()
```

## Installing Erlang with docs via asdf
```sh
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_MANPAGES=yes
export KERL_INSTALL_HTMLDOCS=yes

asdf uninstall erlang 26.0.2
asdf install erlang 26.0.2
asdf local erlang 26.0.2
```

## Current Issues
- Everything in the original issue
- Should probably run `ex_doc` from source to test stuff
- Additionally Search doesn't appear to be working
  - Need to build docs w/o minifying JS for readable errors
