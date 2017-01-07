module Spina
  module Admin
    class CaseStudiesController < AdminController
      before_filter :set_breadcrumb
      before_filter :set_case_study, except: %i(index new create)

      layout "spina/admin/website"

      def show
      end

      def index
        @case_studies = CaseStudy.all
      end

      def new
        add_breadcrumb "New Case study", spina.new_admin_case_study_path

        @case_study = CaseStudy.new
      end

      def edit
        add_breadcrumb @case_study.title
      end

      def create
        @case_study = CaseStudy.new(case_study_params)

        add_breadcrumb "New Case study"
        if @case_study.save
          redirect_to spina.admin_case_studies_url, notice: "Case study successfully created."
        else
          render :new
        end
      end

      def update
        add_breadcrumb @case_study.title

        if @case_study.update_attributes(case_study_params)
          redirect_to spina.admin_case_study_url, notice: "Case study saved"
        else
          render :edit
        end
      end

      def destroy
        @case_study.destroy
        redirect_to spina.admin_case_study_url, notice: "Case study has been deleted."
      end

      private

      def set_case_study
        @case_study = CaseStudy.find(params[:id])
      end

      def set_breadcrumb
        add_breadcrumb "Case Study", spina.admin_case_studies_path
      end

      def case_study_params
        params.require(:case_study).permit(:title, :subtitle, :description, :client_name, :employee_name, :employee_title, :testimonial)
      end
    end
  end
end
