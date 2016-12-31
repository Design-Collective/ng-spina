#
# Simple API for Spina Team Members
#
class Api::MembersController < Api::ApiController
  before_action :set_member, only: [:show, :update, :destroy]

  def index
    @members = Spina::Member.where(enabled: false)
    render :index
  end

  # GET /members/1
  # GET /members/1.json
  def show
    render :show
  end

  # POST /members
  # POST /members.json
  def create
    @member = Spina::Member.new(member_params)

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    if @member.update(member_params)
      head :no_content
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    head :no_content
  end

  private

  def set_member
    @member = Spina::Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:title)
  end
end
