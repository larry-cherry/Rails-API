class ResumeController < ApplicationController
  def json
    @json = { 
      "name":"Larry Cherry",
      "contact":{
        "github":"github.com/larry-cherry",
        "linkedin":"",
        "email":"larry.cherry.0406@gmail.com",
        "phone":"(832) 613-8302"
      },
      "summary":"I am a web developer looking for a new challenge. I am proficient in Ruby, Javascript, Agile development, Test driven development, and Git workflow.
",
      "skills":{
        "WEB DEVELOPMENT":"Ruby, HTML, CSS, JavaScript, JQuery, Rspec, Jasmine, Git, Bootstrap, SQlite, PostgreSQL",
        "SYSTEM ADMIN":"Active Directory, Microsoft Exchange, Google Apps"
      },
      "PROJECTS":{
        "RAIL API":"https://github.com/larry-cherry/Rails-API",
        "WEATHER APP":"https://larry-cherry.github.io/WeatherApp/",
        "QUOTE MACHINE":"https://github.com/larry-cherry/QuoteMachine",
        "BUZZBUS":"https://github.com/larry-cherry/buzz_bus",
        "CROWDPLAYWEB":"https://github.com/larry-cherry/CrowdPlayWeb"
      },
      "EXPERIENCE":{
        "CODE WIZARDS":{
          "title":"Instructor",
          "description":"Instructing students from an elementary to middle school in the languages of HTML, CSS, Javascript, and Python. Providing assistance with student projects throughout the course."
        },
        "DEV BOOTCAMP":{
          "title":"Web Developer",
          "description":"Took a deep dive into web development with over 600 hours of experience. Developed applications using Ruby, Rails, Javascript, JQuery, Test Driven Development, and Agile Development"
        },
        "W3IT":{
          "title":"System Administrator",
          "description":"Managed networking equipment and services for multiple medical clients. Provided timely user support for hardware and software applications."
        }
      },
      "EDUCATION":{
      
      }
     }
    render json: @json
  end
end
