# mamba

## Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with mamba](#setup)
    * [Beginning with mamba](#beginning-with-mamba)
1. [Usage - Configuration options and additional functionality](#usage)
<!--1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)-->

## Description

[mamba](https://github.com/mamba-org/mamba) is a reimplementation of the conda
package manager in C++. This puppet module manages installation of the mamba
package manager.

## Setup

### Beginning with mamba

To have Puppet install `mamba` with the defaut paramters, declare the `mamba`
class:
```puppet
class { 'mamba': }
```
When you decalre this class with the default options, the module installs version
23.1.0-1 of Mambaforge.

## Usage

### Installing a different version of mamba
To configure the version of Mambaforge that should be used, specify the version:
```puppet
class { 'mamba':
    version => '22.11.1-4'
}
```

<!--
## Limitations

In the Limitations section, list any incompatibilities, known issues, or other
warnings.

## Development

In the Development section, tell other users the ground rules for contributing
to your project and how they should submit their work.
-->
