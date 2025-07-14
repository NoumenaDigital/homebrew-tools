# Homebrew Tools

This repository contains a collection of Homebrew formulae for our in-house tools.

## Installation

First, we assume you have Homebrew installed on your system. If you haven't installed it yet, you can do so by following 
the instructions at [Homebrew's official website](https://brew.sh/).

Since our formulae are self-hosted, you need to tap our repository first. You can do this by running the following 
command in your terminal:

```bash
  brew tap NoumenaDigital/tools
```

Now that you have tapped our repository, you are ready to install our tool suite using Homebrew!

### NPL CLI Tool
File `npl.rb` provides a Homebrew formula for the NPL CLI tool, which is used to manage and interact with NPL (Noumena
Protocol Language) projects. For more information on the `npl-cli`, refer to its section in our [documentation](https://documentation.noumenadigital.com/runtime/tools/build-tools/cli/) 
or to the [public repository](https://github.com/NoumenaDigital/npl-cli).

To install the NPL CLI tool, you can run:

```bash
  brew install npl
```
