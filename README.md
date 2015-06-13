# Jssocials::Rails

jsSocials is a simple social network sharing jQuery plugin. 

  - http://js-socials.com/
  - https://github.com/tabalinas/jssocials

This gem was built for the ease use of jsSocials in Rails projects.

[![Gem Version](https://badge.fury.io/rb/jssocials-rails.svg)](http://badge.fury.io/rb/jssocials-rails)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jssocials-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jssocials-rails

## Usage

Add this line to your application's app/assets/javascripts/application.js:

```js
//= require ...
//= require jssocials   # or jssocials.min
//= require ...
```

Add this line to your application's app/assets/javascripts/application.scss:

```css
...
@import 'jssocials';    
@import 'jssocials-theme-flat';
...
```

Finally, add the share container tag to your application's some view template file as follows:

```html
<div id='share'></div>
```

and, add this coffeescript to your application's some coffeescript file as follows:

```coffee
$ ->
  ...
  $('#share').jsSocials
    url: 'http://your-domain'
    text: 'your share message'
    showCount: (screenWidth) ->
      screenWidth > 1024
    showLabel: (screenWidth) ->
      screenWidth > 1280
    shares: [
      {
        share: 'email'
        shareUrl: "mailto:<your-mail-address>?subject={text}&body={url}"
      }
      'twitter'
      'facebook'
      'googleplus'
      'linkedin'
      'pinterest'
    ]  
```

That's it.

## Changelog

  - v 0.2.0.0 : Initially deployed to Rubygems.org

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jssocials-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
