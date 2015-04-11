# coding: utf-8

require 'yaml'
require 'bundler'
Bundler.require


class BotWordManager < Sinatra::Base
  register Sinatra::Reloader

  wordsfile = "botwordmanager.rb"
  WORDDATA = YAML.load_file(wordsfile)

    #ページ表示
    get '/' do
      # 会話データ読み込み
      @words = WORDDATA
      haml :index
    end
end
