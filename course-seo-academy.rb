def up
  Course.find_by(:slug => "academy-software-engineer")&.destroy
  content = {
    :metadata => {:jsonld => "true", :program => "academy", :header => nil, 
    :cta_types => {:course_banner_request_callback=> 'landing' , :course_fab_request_callback => 'rcb'},
    :links => [{:url => "/events", :text => "Events"}], :noindex => "true"},
    :banner_alt => {
      :heading => "Accelerate your Career in Software Development",
      :content => "A structured, flexible & guided learning program, every software developer deserves!",
      :flash_text => "Next cohort for working professionals begins on <b>9th August</b>",
      :image1 => "us/girl_smiling.png",
      :image2 => "us/girl_working.png",
      :image3 => "us/boy_looking.png",
      :apply_path => "/apply",
      :join_cta_text => "Talk to our Academic Advisors",
      :callout_icon => "us/callout_icon.svg"
    },:glance => {
      :heading => "Scaler Academy is an <b>upskilling program for Software Professionals</b> to master Problem Solving and System Design.",:cards => [{
        :img => "academy/svg/at-a-glance/structured.svg",
        :title => "<b>Structured, industry vetted curriculum </b>"
      }, {
        :img => "academy/svg/at-a-glance/live-classes.svg",
        :title => "<b>Live classes by faculty</b> who have been there, done that"
      }, {
        :img => "academy/svg/at-a-glance/project1.svg",
        :title => "<b>Practical experience</b> through <b>real-life projects</b>"
      }, {
        :img => "academy/svg/at-a-glance/mentor.svg",
        :title => "<b>Aspirational network</b> of Scaler peers, across batches & backgrounds"
      }, {
        :img => "academy/svg/at-a-glance/flexibility.svg",
        :title => "<b>Regular 1:1 mentorship</b> from product industry veterans"
      }, {
        :img => "academy/svg/at-a-glance/career-support.svg",
        :title => "<b>Career support</b>, through mock interviews, profile building & referral "
      }]
    },:partners => {
      :heading => "Scaler alumni work at <b>leading tech companies</b>",:companies => ["google", "netflix", "amazon", "adobe", "microsoft", "goldman", "uber", "atlassian"]
    },:two_course_curriculum => {
      :features => {
        :title => "Tried & tested curriculum, delivered to <b>thousands of learners</b>",:brochure_link => "https://d2beiqkhq929f0.cloudfront.net/public_assets/assets/000/001/754/original/US_Academy_Brochure.pdf?1643800379",:market => {
          :head => "Other programs in the market",:items => [{
            :img => "academy/svg/unstructured.svg",
            :desc => {
              :title => "Unstructured and Theoretical",:subtitle => "Non-contiguous articles, videos & limited practical experience."
            }
          }, {
            :img => "academy/svg/not-industry-relevant.svg",
            :desc => {
              :title => "Not industry-relevant",:subtitle => "Old, un-refreshed content."
            }
          }, {
            :img => "academy/svg/basic-coding.svg",
            :desc => {
              :title => "Basic level coding",:subtitle => "Teach only coding language basics."
            }
          }, {
            :img => "academy/svg/impersonal.svg",
            :desc => {
              :title => "No way to pause the batch",:subtitle => "Work/family needs time? Cannot pause your course."
            }
          }, {
            :img => "academy/svg/theoretical.svg",
            :desc => {
              :title => "Interview preparation courses",:subtitle => "Focus on cracking interviews."
            }
          }, {
            :img => "academy/svg/course-seo-impersonal.svg",
            :desc => {
              :title => "Impersonal",:subtitle => "Recorded videos & articles with no personalisation."
            }
          }]
        },:scaler => {
          :head => "Scaler Academy",:items => [{
            :img => "academy/svg/structured.svg",
            :desc => {
              :title => "Structured and Hands-on",:subtitle => "Learn step-by-step via live classes and real-life projects."
            }
          }, {
            :img => "academy/svg/industry-relevant.svg",
            :desc => {
              :title => "Industry-relevant",:subtitle => "Reverse engineered, industry-tested curriculum makes you interview ready."
            }
          }, {
            :img => "academy/svg/hands-on.svg",
            :desc => {
              :title => "In-depth advance level coding",:subtitle => "Taking your coding skills to the next level."
            }
          }, {
            :img => "academy/svg/personalised.svg",
            :desc => {
              :title => "Pause the program at your convenience",:subtitle => "Pause your learnings for a month & restart with the next batch."
            }
          }, {
            :img => "academy/svg/not-interview-prep.svg",
            :desc => {
              :title => "Not just an Interview preparation course",:subtitle => "We build all round developers who not just get jobs but excel at it."
            }
          }, {
            :img => "academy/svg/course-seo-personalised.svg",
            :desc => {
              :title => "Personalised",:subtitle => "Learning path and peer-group customised basis knowledge & learning pace."
            }
          }]
        }
      },:content => {
        :title => "Our curriculum is designed to make you a <b>solid engineer</b>",:subtitle => "Based on a simple entrance test, you will be placed in Intermediate / Advanced sections. <br/>Intermediate section covers some additional basic topics that Advanced students do not need.",:courses => [{
          :name => "Intermediate",
          :icon => "academy/svg/intermediate.svg",
          :active_icon => "academy/svg/intermediate-active.svg",
          :desc => "I know coding in one programming language. Can build basic applications.",
          :enrollment_status => "Admissions are open",
          :duration => "37 Week Course"
        }, {
          :name => "Advanced",
          :icon => "academy/svg/advanced.svg",
          :active_icon => "academy/svg/advanced-active.svg",
          :desc => "I am good at coding. I know basic problem solving, data structures, algorithms. Can build basic to advanced applications.",
          :enrollment_status => "Admissions are open",
          :duration => "30 Week Course"
        }],:pointers => [{
          :title => "Programming Constructs",
          :clock_icon => "academy/svg/clock2.svg",
          :duration => "7 Weeks",
          :syllabus => ["Functions", "Recursion", "Pointers", "Structures, Unions & Dynamic Arrays", "Asymptotic notations"],
          :mark => "academy/svg/mark2.svg",
          :arrow => "academy/svg/arrow1.svg"
        }, {
          :title => "Problem Solving & CS Fundamentals",
          :clock_icon => "academy/svg/clock3.svg",
          :duration => "15 Weeks",
          :syllabus => ["Time Complexity, Arrays, Strings, Binary Search, 2 Pointers, Recursion, Hashing, Sorting, Bit manipulation", "Stacks, Queues, Linked Lists, Trees, Tries, Heap", "Greedy, DP, Graphs", "DB, OS, and Computer Networks"],
          :mark => "academy/svg/mark3.svg"
        }],:special_courses => [{
          :name => "Backend Specialisation",
          :clock_icon => "academy/svg/clock4.svg",
          :duration => "15 Weeks",
          :pointers => ["System Design (HLD + LLD) with project", "MVC, REST APIs, ORM, SpringBoot, Views, Database Indexes, Multithreading"]
        }, {
          :name => "Fullstack Specialisation",
          :clock_icon => "academy/svg/clock5.svg",
          :duration => "15 Weeks",
          :pointers => ["System Design (HLD + LLD) with project", "Building a server, intro to MVC, web architecture, HTML, CSS, Javascript, Node.js, Backend architecture, MongoDB, React / Redux"]
        }],:advanced_electives => {
          :title => "<b>Advanced Electives</b> (Optional)",:subtitle => "Learners can take up all electives or just a few of them and they are completely optional. We believe these electives can help engineers further accelerate their career and hence we advise you to opt for them!",:modal_title => "<b>Introducing Advanced Electives</b>",:modal_subtitle => "Introducing 3 elective courses to our curriculum, to help you go above and beyond in your journey to being the best programmer you can be",:new_badge_icon => "academy/svg/elective_new_badge.svg",:subjects => []
        },:notes => [{
          :icon => "",
          :title => "Eligibility",
          :hide_year => true,
          :desc => "Working professionals in software industry"
        }]
      }
    },:flexibility => {
      :heading => "We have designed a flexible program for <b>Working Professionals</b> like you",
      :cards => [{
        :img => "academy/svg/missed-class-logo.svg",
        :img_title => "Missed a class?",
        :content => "Watch a recorded version later, with teaching assistants available to solve your doubts"
      }, {
        :img => "academy/svg/revise.svg",
        :img_title => "Want to revise?",
        :content => "Access classes, assignments & recordings up to a year after course completion"
      }, {
        :img => "academy/svg/doubts.svg",
        :img_title => "Have doubts?",
        :content => "Get them resolved over text / video by our expert teaching assistants!"
      }]
    },:people => {
      :heading => "Our <b>teaching army</b> will give you <b>conf<span class=\"highlight\">idence on your</span> fundamentals</b>",:instructors => [{
        :image => "academy/png/anshuman.png",
        :name => "Anshuman Singh",
        :company => "facebook",
        :mediumName => "linkedin",
        :mediumUrl => "academy/svg/linkedin.svg",
        :details => [],
        :showEx => true,
        :hideReadMore => true,
        :linkedin => "https://www.linkedin.com/in/anshumansingh26/"
      }, {
        :image => "academy/png/saurya.png",
        :name => "Saurya Velagapudi",
        :company => "google",
        :mediumName => "linkedin",
        :mediumUrl => "academy/svg/linkedin.svg",
        :details => [],
        :hideReadMore => true,
        :linkedin => "https://www.linkedin.com/in/saurya-velagapudi-74a8a621/"
      }, {
        :image => "academy/png/naman_bhalla.png",
        :name => "Naman Bhalla",
        :company => "google",
        :mediumName => "linkedin",
        :mediumUrl => "academy/svg/linkedin.svg",
        :details => [],
        :showEx => true,
        :hideReadMore => true,
        :linkedin => "https://www.linkedin.com/in/namanbhalla/"
      }, {
        :image => "academy/png/utkarsh.png",
        :name => "Utkarsh Gupta",
        :company => "google",
        :mediumName => "linkedin",
        :mediumUrl => "academy/svg/linkedin.svg",
        :details => [],
        :showEx => true,
        :hideReadMore => true,
        :linkedin => "https://www.linkedin.com/in/utkarsh-gupta-065626140/"
      }]
    },:career => {
      :heading => "<b>Along with preparing you for the job, we also prepare you for your job search and interviews</b>",:sub_heading => "",:cards => [{
        :img => "academy/svg/employer.svg",
        :content => "Access job opportunities from our <b>many employer</b> partners"
      }, {
        :img => "academy/svg/community.svg",
        :content => "Exchange job opportunities with our Scaler student community"
      }, {
        :img => "academy/svg/mock.svg",
        :content => "Practice mock interviews with <b>people working in</b> the industry"
      }, {
        :img => "academy/svg/resume.svg",
        :content => "Optimize your resume & LinkedIn profile with our <b>experienced experts</b>"
      }]
    },:tuition_fee => {
      :heading => "<b>Pricing</b>",
      :aligned_title_img => "",
      :title_content => "",
      :subtitle => "Our payment plans make Scaler Academy accessible to everyone. Scaler offers various scholarships and financing options. <br/>Reach out to our Academic Advisors for more information and assistance.",
      :centered => true,
      :buttons => [{
            id: 'tuition-fee-request-callback-modal',
            button_id: 'tuition-fee-request-callback',
            text: "Talk to our Academic Advisors",
            link: ''
      }]
    },:masterclass => {
      :title => "Not convinced yet?<br/>Experience Scaler through a free class",:subtitle => "",:image => "scaler_branding/png/masterclass.png",:cta => {
        :text => "Attend a free class now",:link => "/events" },
        :key_takeaways => {
          :heading => "Your Takeaways From This Free Class:",
          :features => ["Personalized advice from our founders on how to advance your tech career",
"A road map to getting hired by top tech giants and accelerate your learning with the help of MAANG instructors and mentors",
"Tested strategies for cracking interviews with an industry-vetted curriculum and live classes",
"A deep understanding of how our course takes a holistic approach to building strong fundamentals and why DSA and System Design is essential for software engineers",
"Information and details on Scaler's pricing and course features"]
        }
     
    },:academy_welcome_modal => {
      :title => "Welcome to the Scaler family",:sub_title => "You will receive an email from us with a link to reset your password. We recommend that you do so before your next login. You can also use the OTP option.",:image => {
        :url => "scaler_branding/svg/welcome-email.svg",:title => "Scaler Academy Welcome"
      },:details => {
        :first => "You'll be redirected to your profile within <b>3 seconds</b>",:second => "If you do not get redirected automatically, please <a class=\"primary underline\" href=\"__link__\">click here</a> to do so manually."
      }
    },:fab_request_callback => {
      :show => true
    }
  }

  CoursePageTemplateService.new(
    title: "Academy Software engineer",
    content: content
  ).execute
end
