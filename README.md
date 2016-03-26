# gradifi-win_vagrant_orchestrate Puppet module

This is a module that will bootstrap a windows box with [vagrant orchestrate](https://github.com/gradifi/vagrant-orchestrate) which includes libcurl.dll, openssh, and rsync. This will also install vagrant, and the vagrant plugins that makes vagrant-orchestrate work.

## requirements
* `chocolatey-chocolatey`

## Installing

`mod 'gradifi-win_vagrant_orchestrate', :git => "https://github.com/gradifi/win_vagrant_orchestrate.git"`

## usage

```
include win_vagrant_orchestrate
```
