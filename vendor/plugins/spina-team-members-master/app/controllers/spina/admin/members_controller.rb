module Spina
  module Admin
    class MembersController < AdminController
      before_filter :set_breadcrumb
      before_action :set_member, only: [:show, :edit, :update, :destroy]

      layout "spina/admin/website"

      def show
      end

      def index
        @members = Member.all
      end

      def new
        add_breadcrumb "New member", spina.new_admin_member_path
        @member = Member.new
      end

      def edit
        add_breadcrumb @member.full_name
      end

      def create
        add_breadcrumb "New member"
        @member = Member.new(member_params)
        if @member.save
          redirect_to spina.admin_members_url, notice: "Member successfully created"
        else
          render :new
        end
      end

      def update
        add_breadcrumb @member.full_name
        if @member.update_attributes(member_params)
          redirect_to spina.admin_members_url, notice: "Member saved"
        else
          render :edit
        end
      end

      def destroy
        @member.destroy
        redirect_to spina.admin_members_url, notice: "The member has been deleted"
      end

      private

      def set_member
        @member = Member.find(params[:id])
      end

      def set_breadcrumb
        add_breadcrumb "Members", spina.admin_members_path
      end

      def member_params
        params.require(:member).permit(:first_name, :last_name, :role, :email)
      end
    end
  end
end
