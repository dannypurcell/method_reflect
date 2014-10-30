Method Reflect
---------------

&copy; Danny Purcell 2013 | MIT license

Gives Ruby Methods some deeper self-knowledge.

Features
---------------

Loading this gem adds several instance methods to the core Method class so methods can tell you more about themselves.

Leverages [YARD](https://github.com/lsegal/yard) and [method_source](https://github.com/banister/method_source) to
provide easy access to everything you might want to know about a method.


Installation
---------------

#### Install with Gem
* Available on [Rubygems](https://rubygems.org/gems/method_reflect)
* Be sure one of your gem sources is `source 'https://rubygems.org'`
* Run `gem install rubycom`

#### Building locally
* Fork the repository if you wish
* Clone repository locally
    * If using the main repo: `git clone https://github.com/dannypurcell/method_reflect.git`
* Run `rake install` if installing for the first time
* If updating to the latest version run the following commands
    * `git checkout master`
    * `git pull origin master`
        * If that causes any problems `git reset --hard origin/master`
    * `rake upgrade`
