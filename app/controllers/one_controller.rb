# coding: utf-8

class OneController < ApplicationController

  def index
    render text: 'hello world!!レンダー'
  end

  def view
    @msg = 'こんにちは、世界!ビュー'
    #render 'one/special' #もしも検索先の名前をコントローラー/アクション.html.erbにしない場合
                          #この場合はone/special.html.erbの場合
  end

  def list
    @books = Book.all
  end

  def app_var
    render text: MY_APP['logo']['source']
  end


end
