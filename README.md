# Homebrew Tools

This repository contains the formula for the installation of the NPL (Noumena Protocol Language) CLI tool via Homebrew.

## Installation

First, we assume you have Homebrew installed on your system. If you haven't installed it yet, you can do so by following 
the instructions at [Homebrew's official website](https://brew.sh/).

### NPL CLI Tool
File `npl.rb` provides the Homebrew formula for the NPL CLI tool, which is used to manage and interact with NPL projects. 
For more information on the `npl-cli`, refer to its section in our [documentation](https://documentation.noumenadigital.com/runtime/tools/build-tools/cli/)
or to the [public repository](https://github.com/NoumenaDigital/npl-cli).

Since our formula is self-hosted, you need to tap our repository first. 

Tapping and installation can be done in one step using the following command:

```bash
  brew install NoumenaDigital/tools/npl
```
