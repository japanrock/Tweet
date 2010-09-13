#!/usr/bin/env ruby
# coding: utf-8

require 'rubygems'
require 'oauth'
require 'json'
require 'hpricot'
require 'open-uri'
require 'yaml'
require 'parsedate'
require "kconv"
require File.dirname(__FILE__) + '/twitter_oauth'

# Usage:
#  1. このファイルと同じディレクトリに以下5つのファイルを設置します。
#   * twitter_oauth.rb
#    * http://github.com/japanrock/TwitterTools/blob/master/twitter_oauth.rb
#   * sercret_key.yml
#    * http://github.com/japanrock/TwitterTools/blob/master/secret_keys.yml.example
#  2. つぶやく内容を第１引数に渡して実行します。
#   ruby tweet.rb Ruby最高！

twitter_oauth = TwitterOauth.new
twitter_oauth.post $*[0]
