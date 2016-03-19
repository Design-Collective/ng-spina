class MembersController < ApplicationController
  before_action :set_member, only: [:show, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    @members = Spina::User.all

    render json: @members
  end

  # GET /members/1
  # GET /members/1.json
  def show
    render json: @member
  end

  # POST /members
  # POST /members.json
  def create
    @member = Spina::User.new(member_params)

    if @Spina::User.save
      render json: @member, status: :created, location: @member
    else
      render json: @Spina::User.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    @member = Spina::User.find(params[:id])

    if @Spina::User.update(member_params)
      head :no_content
    else
      render json: @Spina::User.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @Spina::User.destroy

    head :no_content
  end

  private

    def set_member
      @member = Spina::User.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :title, :avatar)
    end
end
