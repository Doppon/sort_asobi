class EasyController < ApplicationController
  def index
    @choices = Choice.all
  end
end
