# Rails helper for Unobtrusive Flash Object (UFO).
# 
# By Artūras Šlajus <x11@arturaz.net>
#
# $Id$
#

module Arturaz
  module UfoHelper
    # Makes UFO put _movie_ into _target_ div (by id). Passes _options_ to
    # UFO.
    #
    # Default options:
    #   :width - 300
    #   :height - 120
    #   :majorversion - 6
    #   :build - 40
    def ufo(target, movie, options={}) 
      options[:movie] = movie
      options = {
        :width => 300, :height => 120, :majorversion => 6, :build => 40
      }.update(options)

      javascript_tag "UFO.create(#{options.to_json}, #{target.to_json});"
    end

    # Returns div tag with id set to _target_ and ufo script for that div.
    def ufo_div(target, movie, options={})
      content_tag(:div, 'Flash content', :id => target) + 
        ufo(target, movie, options)
    end
  end
end
