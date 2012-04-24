class ThingsController < ApplicationController
  def index
    render json: {things: Thing.all}
  end

  def create
    thing = Thing.create(params[:thing])
    render json: {thing: thing}
  end

  def show
    render json: {thing: Thing.find(params[:id])}
  end

  def update
    thing = Thing.find(params[:id])
    thing.update_attributes(params[:thing])
    render json: {thing: thing}
  end

  def delete
    Thing.find(params[:id]).destroy
    render json: {}
  end
end
