# coding: utf-8

require 'pp'

require 'yaml'
require 'bundler'
Bundler.require


class BotWordManager < Sinatra::Base
  register Sinatra::Reloader

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end
  wordsfile = "wordfile.yml"
  WORDDATA = YAML.load_file(wordsfile)

    #ページ表示
    get '/' do
      # 会話データ読み込み
      @words = WORDDATA

      haml :index
    end
end
