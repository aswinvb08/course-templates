def up
  Course.find_by(:slug => "us-academy-full-stack-developer")&.destroy
  content = {
    :metadata => {:jsonld => "true", :program => "academy", :header => nil, 
    :cta_types => {:course_banner_request_callback=> 'landing' , :course_fab_request_callback => 'rcb'},
    :links => [{:url => "/events", :text => "Events"}], :noindex => "true"},
    :banner_alt => {
      :heading => "Become a Full Stack Developer",
      :content => "Upskill in DSA & System Design with specialization in Full Stack Development
      and Build real-world projects by mastering React, MERN, JavaScript, etc.",
      :image1 => "us/girl_smiling.png",
      :image2 => "us/girl_working.png",
      :image3 => "us/boy_looking.png",
      :apply_path => "/apply",
      :join_cta_text => "I'm interested!",
    },:briefing => {:heading => "<h2>Why <b>Full <span class=\"highlight\">Stack Web Development?</span></b></h2>", 
        :places => [{:className => "mc", :name => "<h3><b>What is Full Stack Web Development and why is it important to learn?</b></h3>", :desc => "Full Stack Development is a software profession/stream where a developer deals with both the Frontend (client-side) and Backend (server-side) of a tech product. A Full Stack Developer is proficient in several technologies that help in developing a robust tech product, and thus play a major role in making decisions for the company. It is one of the high-demand jobs in the software industry."}, {:className => "mc", :name => "<h3><b>What is the job of a Full Stack Developer?</b></h3>", :desc => "Full-stack developers develop both the front-end and the server-side of the application, deploy, debug and maintain their databases and servers. Being a Full Stack Web Developer, you will be at an edge as you make better technical decisions and see the big picture."}, 
            {:className => "mc", :name => "<h3><b>What skills are required to become a Full Stack Developer?</b></h3>", :desc => "As a Full Stack Developer, you become the jack of all techs, which means you must learn and be proficient in:<br>  
                <li> HTML, CSS, UI & UX, JavaScript, etc. </li>  <li> Server-side languages such as Java, Python, Node.js, Or Golang, etc.</li>  <li> Frameworks Express, Spring Boot, Django, etc.</li>  <li> Along with an understanding of System Design, Data Structures and Algorithms, Databases, 
                and version control systems like Git.</li>"}]},
    :glance => {:heading => "<h2><span class='highlight'>Key highlights</span> of the Scaler Academy's Full 
        Stack Specialization program</h2>", "sub_heading"=>"Scaler Academy's full-stack development program 
        helps you learn exactly everything that you need to, to solidify your tech career", 
        :cards => [{:img => "academy/svg/at-a-glance/structured.svg", :title => "<b>Structured, industry-vetted curriculum</b>"}, {:img => "academy/svg/at-a-glance/live-classes.svg", :title => "<b>Live classes by faculty</b> who have been there, done that"}, 
            {:img => "academy/svg/at-a-glance/project.svg", :title => "<b>Practical experience</b> through <b>real-life projects</b>"}, 
            {:img => "course_page/svg/Aspirational-Network.svg", :title => "<b>Aspirational peer group</b> of 2,000+ Scaler students & alumni"}, {:img => "course_page/svg/Career-Support.svg", 
                :title => "<b>Regular 1:1 mentorship</b> from industry veterans"}, {:img => "course_page/svg/Mentorship.svg", 
                    :title => "<b>Career support</b> via a dedicated recruitment team, alumni network, etc"}]},
                    :two_course_curriculum => {
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
                      },
    :partners => {
      :heading => "Scaler alumni work at <b>leading tech companies</b>",:companies => ["google", "netflix", "amazon", "adobe", "microsoft", "goldman", "uber", "atlassian"]
    }, :people => {:heading => "Gain confidence in <b>Full Stack concepts</b>, taught by <span class=\"highlight\"><b>experienced instructors</b></span>", 
        :description => "Our faculty comprises experts from Amazon, Google, Hotstar, Facebook, Microsoft to name a few, who have successfully built scalable systems", 
        :instructors => [{:image => "academy/webp/anshuman.webp", :name => "Anshuman Singh", :company => "facebook", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Co-founder of Scaler Academy and two-time ACM ICPC world finalist.", 
            "Was one of the founding team members of 
            Facebook Messenger and worked directly with Mark Zuckerberg on product development.", "Responsible for setting up Facebook's London office, the first Facebook Engineering office outside of the USA"], 
            :showEx => true, :linkedin => "https://www.linkedin.com/in/anshumansingh26/"}, {:image => "academy/webp/mohit.webp", :name => "Mohit Yadav", :company => "hotstar", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                :details => ["Built the infra to ingest data at 1 Tb/s at Nutanix", "Built the backend system for Hotstar that now handles 28M concurrent visitors and streams the IPL"], :showEx => true, :linkedin => "https://www.linkedin.com/in/mohit-yadav-33828230/"}, 
                {:image => "academy/webp/kshitij.webp", :name => "Kshitij Mishra", :company => "snapdeal", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Snapdeal", "As part of a 2 member SDE team at Snapdeal, managed the entire codebase 
                of Snapdeal Seller Search services, helped Snapdeal move from highest available AWS model to the lowest within 4 months"], :showEx => true, :linkedin => "https://www.linkedin.com/in/kshitij-mishra-a5779334/"}, {:image => "academy/webp/tarun.webp", :name => "Tarun Malhotra", :company => "media", :mediumName => "linkedin", 
                :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Media.net", "As Team Lead at Media.net, built the contextual ad-serving systems to handle 7M+ URLs/day, process 12M+ ad keywords", "Built ML systems that facilitated INR 10+ Cr. of annual revenue"], :showEx => true, :linkedin => "https://www.linkedin.com/in/tarun-malhotra-72973aa6/"}, 
                {:image => "academy/webp/abhimanyu.webp", :name => "Abhimanyu Saxena", :company => "fab", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Fab.com", "As employee #4 at Fab.com (NYC based ecommerce startup), scaled the company to 
                    unicorn status and architected the entire front-end, building a 300+ engineering team"], :showEx => true, :linkedin => "https://www.linkedin.com/in/abhimanyusaxena/"}, {:image => "academy/webp/tushar.webp", :name => "Tushar Bisht", :company => "facebook", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Facebook", "As a Software engineer at Facebook US, co-created & scaled the 'Nearby Friends' features to 10M DAU", "Co-founded TownRush and successfully exited to Grofers in 2015 via acquisition"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/bisht-tushar/"}, {:image => "academy/webp/pragy.webp", :name => "Pragy Agarwal", :company => "media", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Media.net", "As a Platform Engineer at Media.net, scaled low latency systems with millions of queries per second", 
                    "16+ years of coding experience across a variety of programming languages & paradigms. Has a keen eye for - good coding practices."], :showEx => true, :linkedin => "https://www.linkedin.com/in/pragyagarwal/"}, {:image => "academy/webp/siddharth.webp", :name => "Siddharth Taneja", :company => "media", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Sapient, Directi", "Now front-end lead at IB & Scaler, he understands both service and product-based company environments", "Has developed the entire full-stack curriculum at Scaler and leads all full-stack engineering classes", "2000+ students have rated him on average 4.5 out of 5"], :showEx => true, :linkedin => "https://www.linkedin.com/in/siddharth-taneja-98596588/"}, {:image => "academy/webp/utkarsh.webp", :name => "Utkarsh Gupta", :company => "google", :mediumName => "linkedin", 
            :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Google, Germany", "One of the highest rated coders from India - 2300 rating (6 stars) on Codechef and 2140 rating ('Master') on Codeforces ", "Ranked #1 in India in Google HashCode 2019", "Only 1 of 9 programmers globally to have cleared the Expert Level of Codechef's 'Certified Data Structures and Algorithms Programme' (CCDSAP)", "Worked in the 'Privacy and Data Protection Office' as a Software Engineer in Google Munich, Germany"], 
    :showEx => true, :linkedin => "https://www.linkedin.com/in/utkarsh-gupta-065626140/"}, {:image => "academy/webp/sundeep.webp", :name => "Sundeep Babbur", :company => "", :companylogo => "academy/svg/urban.svg", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Urban Piper", "Intial member of Urban Piper who built a scalable product to support multiple number of clients.", "Now tech lead of multiple products at Scaler Academy", "Active contributor in open source projects"], 
    :showEx => true, :linkedin => "https://www.linkedin.com/in/sundeep-babbur/"}, {:image => "academy/webp/sahil.webp", :name => "Sahil Bansal", :company => "scaler", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Qualified for ACM ICPC Amritapuri onsite-regionals 3 times in a row", "Started the coding culture at IIT Jammu, conducted workshops, mentored junior students and assisted as a TA in programming courses", "As an open source contributor, contributed to Github repositories with more than 300 stars"], :showEx => false, :linkedin => "https://www.linkedin.com/in/sahilbansal17"}], 
    :class => {:heading => "Balancing work, home and studies is tough. These uncertain times don't help. We've designed the program with your experience as our priority", :cards => [{:img => "academy/svg/live-class/Live-class-instruction.svg", :img_title => "<b>Live class instruction</b>", :content => "2 - 3 times a week for 1.5 hours each", "color"=>"flexibility-yellow"}, {:img => "academy/svg/live-class/Timing-determined-by-batch-students.svg", :img_title => "<b>Timing determined by batch students</b>", 
    :content => "Typically on week-nights or weekends", "color"=>"flexibility-light-blue"}, {:img => "academy/svg/live-class/Access-to-assignments-tests-class-recordings.svg", :img_title => "<b>Access to assignments, tests & class recordings</b>", :content => "1 year post course completion free of cost", "color"=>"flexibility-pale-red"}, {:img => "academy/svg/live-class/Timely-doubt-resolution.svg", :img_title => "<b>Timely doubt resolution</b>", :content => "Via chat or phone call", "color"=>"flexibility-light-purple"}]}},
    :career => {
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
    },
    :faq_us => {
      :heading => 'FAQs',
      :list => [
        {
          :heading => 'Is this program for me?',
          :desc => 'The Scaler Academy Program is for tech professionals with more than 6 months of experience in software development. In addition to that, you must know one high-level programming language.'
        },
        {
          :heading => 'Why is this course 7 or 9 months long?',
          :desc => "Designed by MAANG experts, the Scaler Academy course is not a crash course, but a comprehensive one. Our industry-vetted curriculum lets you take charge of your career for life (not just your upcoming interview). And for that, your preparation needs to be thorough. Thus, the course duration is set to align with your hustling schedule that doesn't compromise on any in-demand topic, real-world project, or essential preparation strategy."
        },
        {
          :heading => 'Can I pause and resume my course?',
          :desc => 'We understand that you have a tight schedule and sometimes life gets in the way. At Scaler, you have the liberty to pause your course when needed and resume it at a later stage.'
        },
        {
          :heading => 'How long will access to this course be available?',
          :desc => 'You can avail yourself access to this course for 6 months, post-completion.'
        },
        {
          :heading => 'I see that there is a project in the course. How will that reflect on my resume?',
          :desc => 'The project will enable you to:<br>
          - Work on real-life projects that prepares you for real-life situations<br>
          - Get hands-on experience in various aspects of Software Development<br>
          - Deploy projects on your own<br>
          - Add this project on Github<br>
          - Gain the edge you need for interviews'
        },
        {
          :heading => 'What do you mean by career support?',
          :desc => 'Our career support will:
          <ul>
            <li>Provide you with 1:1 mentorship & guidance</li>
            <li>Make you job-ready</li>
            <li>Guide you in refining your resume (LinkedIn & others)</li>
            <li>Address your queries & provide you with industry insights</li>
            <li>Schedule regular 1:1 mocks to help you overcome interview jitters</li>
            <li>Facilitate referrals via our internal career support team & community</li>
          </ul>
          Getting a job is dependent on many factors, some of which are completely out of our control. Hence, we do not guarantee you a job.'
        },
        {
          :heading => 'What is the ideal outcome of joining Scaler?',
          :desc => "Excel in interviews, make it to the top-tech companies, receive the promotion you've always wanted or start your own company! Scaler alumni have achieved all these."
        }
      ]
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
    title: "US Academy Full Stack Developer",
    content: content
  ).execute
end
