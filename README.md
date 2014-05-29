# Template Puppet Module for Boxen

Apache ActiveMQ is a high performance Apache 2.0 licensed
Message Broker and JMS 1.1 implementation.

[![Build Status](https://travis-ci.org/boxen/puppet-template.png?branch=master)](https://travis-ci.org/boxen/puppet-template)

## Usage


```puppet
include activemq
```

## Required Puppet Modules

* `boxen``

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`.

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
