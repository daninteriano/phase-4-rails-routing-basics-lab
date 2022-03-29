class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students
    end
    def grades 
        scores = Student.all.order(grade: :desc)
        render json: scores
    end
end
