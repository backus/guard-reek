# Guard::Reek

Reek guard reeks every file on change.

* Compatible with Bundler 1.0.x

## Install

Please be sure to have [Guard](https://github.com/guard/guard) installed before continue.

Install the gem:

```
$ gem install guard-reek
```

Add it to your Gemfile (inside development group):

``` ruby
group :development do
  gem 'guard-reek'
end
```

Add guard definition to your Guardfile by running this command:

```
$ guard init reek
```

## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme)

## Guardfile

```ruby
guard :reek do
  watch(%r{^lib/(.+)\.rb$})

  # Rails example
  watch(%r{^app/(.+)\.rb$})
end
```

Please read [Guard doc](https://github.com/guard/guard#readme) for more information about the Guardfile DSL.

## Development

* Source hosted at [GitHub](https://github.com/guard/guard-reek)
* Report issues/Questions/Feature requests on [GitHub Issues](https://github.com/guard/guard-reek/issues)

Pull requests are very welcome! Make sure your patches are well tested. Please create a topic branch for every separate change
you make.

## Authors

[Péricles Dias](https://github.com/pericles)
