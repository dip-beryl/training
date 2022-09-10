module Api
  module V1

    class
      StudentsController < ApplicationController

        # because of this you do not need to call ".find(params[:id])"" again and again
      before_action :set_student, only: %i[ show update destroy ]
   
      # GET api/v1/students
      def index
        @students = Student.all
   
        render json: @students
      end
   
      # GET api/v1/students/1
      def show
        render json: @student
      end
   
      # POST api/v1/students
      def create
        @student = Student.new(student_params) 
   
        if @student.save
          render json: @student, status: :created #201
        else
          render json: @student.errors, status: :unprocessable_entity
        end
      end
   
      # PATCH/PUT api/v1/students/1
      def update
        if @student.update(student_params)
          render json: @student
        else
          render json: @student.errors, status: :unprocessable_entity #422
        end
      end
   
      # DELETE api/v1/students/1
      def destroy
        if @student.destroy
          head(:ok)
        else
          head(:unprocessable_entity)
        end

      end
   
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_student
          @student = Student.find(params[:id])
        end
   
        # Only allow a list of trusted parameters through.
        def student_params

          params.require(:student).permit(:first_name, :last_name, :gender, :dob, :contact, :status)
        end
    end
       
  end
end
