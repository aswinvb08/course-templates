def up
  Course.find_by(:slug => "us-academy-software-engineer")&.destroy
  content = {
    :metadata => {:layout=> "US", :jsonld => "true", :program => "academy", :header => nil, 
    :cta_types => {:course_banner_request_callback=> 'landing' , :course_fab_request_callback => 'rcb'},
    :links => [{:url => "/events", :text => "Events"}], :noindex => "true"},
    :banner_us => {
                  :heading  => 'Unlock Your Gateway to Top Tech Companies',
                  :content=> ['Top-instructors from your dream companies','Hyper-personalized learning through 1:1 mentorship
          ', 'Overcome interview nerves with regular mock interviews'],
                  :content_mobile=> ['Top-instructors from MAANG','1:1 mentorship, personalised learning
          ','Get interview ready with mock interviews'],
                  :flash_text=> 'Next cohort begins on 10th May',
                  :image1=> "academy/us/webp/man_smiling_banner.webp",
                  :image2=> 'us/girl_working.png',
                  :image3=> 'us/boy_looking.png',
                  :apply_path=> "/apply",
                  :join_cta_text=> "Talk to an Academic Advisor",
                  :callout_icon=> 'us/callout_icon.svg',
                  :flash_text_before_cta=> "Or you can ",
                  :flash_text_cta=> "Attend a Webinar",
                  :achieved_outcomes => {
                    :heading =>  'Outcomes That Translates Into Your Growth',
                    :flash_subheading =>  '',
                    :callout_icon =>  'us/callout_icon.svg',
                    :cards =>  [
                      {
                        :img =>  'academy/us/svg/GraduationCap.svg',
                        :title =>  '5000+',
                        :sub_title =>  'Learners enrolled'
                      },
                      {
                        :img =>  'academy/us/svg/Briefcase.svg',
                        :title =>  '100+',
                        :sub_title =>  'MAANG Placements'
                      },
                      {
                        :img =>  'academy/us/svg/Timer.svg',
                        :title =>  '750+',
                        :sub_title =>  'Hours of Upskilling'
                      },
                      {
                        :img =>  'academy/us/svg/ChalkboardTeacher.svg',
                        :title =>  '1000+',
                        :sub_title =>  'Experienced Mentors'
                      }
                    ]
                  }
    },
    :curriculum_us => {
      :title =>  "Enough navigating the multiverse of madness, End all confusion with a Comprehensive Curriculum",
      :subtitle =>  "Spare yourself countless hours of ambiguity with a structured, actionable learning approach.",
      :brochure_link =>  'https://d2beiqkhq929f0.cloudfront.net/public_assets/assets/000/001/754/original/US_Academy_Brochure.pdf?1643800379',
      :pointers =>  [
        {
          :duration =>  "Week 0",
          :heading =>  "Introductory Week",
          :image =>  "academy/us/webp/week-1.webp",
          :desc =>  "",
          :mobile_desc =>  "Introduction to your the course, icebreaking sessions, mentor selection, trial classes"
        },
        {
          :duration =>  "8 Weeks",
          :heading =>  "Programming Constructs",
          :image =>  "academy/us/webp/week-2.webp",
          :desc =>  "Number system | Bit manipulations | Time complexity | Arrays
            | Sorting | Hashing | Recursion | OOPS",
          :mobile_desc =>  "Number system, Bit manipulations, Time complexity, Arrays, Sorting, Hashing, Recursion, OOPS",
          :optional_text =>  "*Optional module,  at no additional cost"
        },
        {
          :duration =>  "21 Weeks",
          :heading =>  "Data Structures & Algorithms",
          :image =>  "academy/us/webp/week-3.webp",
          :desc =>  "Arrays | Strings | Linked Lists | Trees | Tries | Heap
            | Backtracking | Dynamic Programming | Operating Systems",
          :mobile_desc =>  "Arrays, Strings, Linked Lists, Trees, Tries, Heap, Backtracking, Dynamic Programming, Operating Systems"
        },
        {
          :duration =>  "10 Weeks",
          :heading =>  "System Design",
          :image =>  "academy/us/webp/week-4.webp",
          :desc =>  "Design Principles | Schema Design | SOLID | Caching
            | CDN | Monoliths | Quad Tress | Bookeeper + Kafka",
          :mobile_desc =>  "Design Principles, Schema Design, SOLID, Caching, CDN, Monoliths, Quad Tress, Bookeeper + Kafka"
        },
        {
          :duration =>  "5 Weeks",
          :heading =>  "Real-world projects",
          :image =>  "academy/us/webp/week-5.webp",
          :desc =>  "Pick a specialization from fullstack, frontend or backend,
            :and work on a hands on project under expert guidance",
          :mobile_desc =>  "Pick a specialization from fullstack, frontend or backend and work on a hands on project under expert guidance"
        }
      ],
      :pointer_end_desc =>  "...Start acing interviews!",
      :know_more_text =>  "Want to know more about the program?",
      :download_curriculum_text =>  "Download Curriculum"
    },
    :people_us => {
      :heading =>  "The Curriculum is Extensive, but you'll have Expert Generals!",
      :description =>  'Meet the Teaching Army (Veterans from Top Tech Companies) who will go the extra mile for YOU!',
      :join_cta_text =>  'Attend a LIVE Webinar',
      :join_cta_text_alternate =>  'Talk to our academic advisors',
      :instructors =>  [
        {
          :image =>  "academy/us/webp/anshuman.webp",
          :name =>  "Anshuman Singh",
          :exCompanies =>  [
            {
              :companyLogo =>  "academy/us/svg/meta.svg",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fourth',
          :linkedin =>  "https://www.linkedin.com/in/anshumansingh26/"
        },
        {
          :image =>  "academy/us/webp/saurya.webp",
          :name =>  "Saurya Velagapudi",
          :companies =>  [
            {
              :company =>  "google",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fourth',
          :linkedin =>  "https://www.linkedin.com/in/saurya-velagapudi-74a8a621/"
        },
        {
          :image =>  "academy/us/webp/utkarsh.webp",
          :name =>  "Utkarsh Gupta",
          :exCompanies =>  [
            {
              :company =>  "google",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fourth',
          :linkedin =>  "https://www.linkedin.com/in/utkarsh-gupta-065626140/"
        },
        {
          :image =>  "academy/us/webp/naman.webp",
          :name =>  "Naman Bhalla",
          :exCompanies =>  [
            {
              :company =>  "google",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fourth',
          :linkedin =>  "https://in.linkedin.com/in/namanbhalla/"
        }
      ]
    },
    :personalised_learning_us => {
      :heading =>  "One Size Doesn't Fit All ",
      :description =>  '1:1 Mentorship to unleash your programming potential ',
      :mobile_description =>  '1:1 Mentorship to unleash your programming potential',
      :mentors_one =>  [
        {
          :image =>  "academy/us/webp/eva.webp",
          :name =>  "Eva Moscovici",
          :companies =>  [
            {
              :company =>  "amazon",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "",
          :mediumUrl =>  "academy/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fifth',
          :linkedin =>  "https://www.linkedin.com/in/anshumansingh26/"
        },
        {
          :image =>  "academy/us/webp/jainam.webp",
          :name =>  "Jainam Shah",
          :exCompanies =>  [
            {
              :company =>  "amazon",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "",
          :mediumUrl =>  "academy/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fifth',
          :linkedin =>  "https://www.linkedin.com/in/anshumansingh26/"
        }
      ],
      :mentors_two =>  [
        {
          :image =>  "academy/us/webp/sumaithri.webp",
          :name =>  "Sumaithri M.",
          :exCompanies =>  [
            {
              :companyLogo =>  "academy/us/svg/meta.svg",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "",
          :mediumUrl =>  "academy/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fifth',
          :linkedin =>  "https://www.linkedin.com/in/anshumansingh26/"
        },
        {
          :image =>  "academy/us/webp/somesh.webp",
          :name =>  "Somesh Maurya",
          :companies =>  [
            {
              :company =>  "meta",
              :showInMobile =>  true
            }
          ],
          :mediumName =>  "",
          :mediumUrl =>  "academy/svg/linkedin.svg",
          :details =>  [],
          :hideReadMore =>  true,
          :spriteSize =>  'one-third',
          :mobileSpriteSize =>  'one-fifth',
          :linkedin =>  "https://www.linkedin.com/in/anshumansingh26/"
        }
      ],
      :content =>  [
        {
          :title =>  'Personalized mentorship',
          :mobile_image =>  'academy/us/svg/PersonalGuidance.svg',
          :mobile_title =>  'Regular 1:1 Sessions to Evaluate Your Progress',
          :description =>  'Regular 1:1 sessions with an industry expert to evaluate your progress'
        },
        {
          :title =>  'Work on Career Goals',
          :mobile_image =>  'academy/us/svg/CareerTrajectory.svg',
          :mobile_title =>  'Actionable Goals for a Defined Career Roadmap',
          :description =>  'Map out your career ambitions & get actionable inputs'
        },
        {
          :title =>  'Condensed Learning from Subject Experts',
          :mobile_image =>  'academy/us/svg/MentorGuide.svg',
          :mobile_title =>  'Condensed Learning from Subject Experts',
          :description =>  'Get a peek inside the work culture of top tech companies and learn what to expect when you make it to your dream company'
        },
        {
          :title =>  'Tailored Coaching for Leadership & Architect Roles',
          :mobile_image =>  'academy/us/svg/TailoredCoaching.svg',
          :mobile_title =>  'Tailored Sessions & Assistance ',
          :description =>  'Schedule custom sessions to discuss your interest'
        }
      ]
    },
    :learning_performing_banner_us => {
      :title =>  "Overcome Interview Jitters with Regular Mock Interviews",
      :description =>  "Through regular mock interviews with experienced leaders from MAANG and other top tech companies, you'll overcome pre-interview nerves, get actionable feedback, and be prepared to nail interviews.",
      :image =>  "academy/us/webp/learning_banner.webp"
    },
    :practice_model_us => {
      :title =>  "Tailored to Fit in YOUR Hectic Schedule",
      :subtitle =>  "Evening and weekend schedule, recorded sessions, TA help, pause/resume etc.",
      :pointers =>  [
        {
          :heading =>  "Learn on your own Time",
          :desc =>  "A comprehensive series of live lectures scheduled with your work demands in mind",
          :image =>  "academy/us/svg/recordings_desktop.svg",
          :image_mobile =>  "academy/us/webp/recordings.webp",
          :image_order =>  "two"
        },
        {
          :heading =>  "Learn at your own Pace",
          :desc =>  "Pause your course anytime & resume it right where you left off",
          :image =>  "academy/us/svg/schedule.svg",
          :image_mobile =>  "academy/us/webp/schedule.webp",
          :image_order =>  "one"
        },
        {
          :heading =>  "Get access to Recorded Lectures",
          :desc =>  "Every lecture is recorded to help you learn and revise at your convenience",
          :image =>  "academy/us/svg/working_man.svg",
          :image_mobile =>  "academy/us/webp/course_pause.webp",
          :image_order =>  "three"
        }
      ]
    },
    :testimonials_us => {
      :heading =>  "Hear what our Learners have to say",
      :heading_mobile =>  "Hear from our learners",
      :subheading =>  'Learn how Scaler helped them achieve their dream careers',
      :subheading_mobile =>  "How Scaler has helped them bag their Dream Jobs",
      :content =>  [
        {
          :id =>  "testimonial_modal_A1",
          :personImage =>  "academy/webp/testimonials/kanika.webp",
          :name =>  "Kanika Goswami",
          :title =>  "Software Engineer",
          :companyName =>  "microsoft",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "Scaler provided on-point learning material with topics I encountered in real-world interviews. Having a mentor from Microsoft gave me an edge while preparing.",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/feed/update/urn:li:activity:6898159790217125888/",
          :linkedin =>  "https://www.linkedin.com/in/kanika-goswami-5a114b117/"
        },
        {
          :id =>  "testimonial_modal_A2",
          :personImage =>  "academy/webp/testimonials/Kaushal.webp",
          :name =>  "Kaushal Kumar",
          :title =>  "SDE",
          :companyName =>  "amazon",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "It was my final year of engineering school. I was confused about career options. I went from being rejected on campus by Amazon to working there as an SDE-1. Scaler made the difference.",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/posts/kaushal-kumar-9b9142141_like-majority-of-engineers-i-was-confused-activity-6799599383202586624-hcwF/",
          :linkedin =>  "https://www.linkedin.com/in/kaushal-kumar-9b9142141/"
        },
        {
          :id =>  "testimonial_modal_A3",
          :personImage =>  "academy/webp/testimonials/Saket.webp",
          :name =>  "Saket Patel",
          :title =>  "Software Engineer",
          :companyName =>  "google",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "I took a chance on Scaler due to its reputation in the industry. After 2+ years experience, I realized I needed to be at the top of my game to make it to my dream company. Scaler got me there! ",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/posts/saketsm_gratitudepost-scaler-review-activity-6893558664830042112-arzq/",
          :linkedin =>  "https://www.linkedin.com/in/saketsm/"
        },
        {
          :id =>  "testimonial_modal_A4",
          :personImage =>  "academy/webp/testimonials/Saloni.webp",
          :name =>  "Saloni Satpute",
          :title =>  "Software Engineer II",
          :companyName =>  "microsoft",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "I'd like to thank Scaler for the guidance I've received. I'm grateful to Anshuman Singh and Abhimanyu Saxena for creating such a wonderful upskilling space.",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/posts/saloni-satpute-8b23a8a1_microsoft-newjob-softwareengineer-activity-6871805189985333248-fsv1/",
          :linkedin =>  "https://www.linkedin.com/in/saloni-satpute-8b23a8a1/"
        },
        {
          :id =>  "testimonial_modal_A5",
          :personImage =>  "academy/webp/testimonials/prince.webp",
          :name =>  "Prince Raj",
          :title =>  "SDE",
          :companyName =>  "amazon",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "The live classes at Scaler Academy not only helped me retain information but also helped me stand out. Every day I was getting 1% better, as they tell us!",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/posts/prince-raj-73679b135_iamscaler-scaleracademy-gratitude-activity-6878594901932695552-bAod/",
          :linkedin =>  "https://www.linkedin.com/in/prince-raj-73679b135/"
        },
        {
          :id =>  "testimonial_modal_A6",
          :personImage =>  "academy/webp/testimonials/Abhinay.webp",
          :name =>  "Abinay Bingumalla",
          :title =>  "SDE2",
          :companyName =>  "microsoft",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "Had it not been for Scaler, it would have taken me so much longer to join a company like Microsoft!",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/posts/abinayb_gratitude-scaler-mentor-activity-6879686185539764224-awLo/",
          :linkedin =>  "https://www.linkedin.com/in/abinayb/"
        }
      ],
      :showMoreTitle =>  "See more Stories",
      :extraContent =>  [
        {
          :id =>  "testimonial_modal_B1",
          :personImage =>  "academy/webp/testimonials/sachin.webp",
          :name =>  "Sachin Saini",
          :title =>  "MTS",
          :companylogo =>  "academy/svg/salesforce.svg",
          :mediumName =>  "linkedin",
          :mediumUrl =>  "academy/us/svg/linkedin.svg",
          :desc =>  "One of the best career decisions I ever made was to join Scaler. After joining Scaler just for a couple of months I have received offers from Salesforce, Amazon, Paytm and WiseTech Global.",
          :cta =>  "Read full review",
          :link =>  "https://www.linkedin.com/feed/update/urn/li/activity/6858708323705987072/",
          :linkedin =>  "https://www.linkedin.com/in/sachinkumar-saini/"
        }
      ]
    },
    :tuition_fee_us => {
      :heading =>  'Talk to Me about the Pricing',
      :subtitle =>  'Our payment plans include scholarships and financing options that make Scaler accessible to everyone. ',
      :title_content =>  '',
      :centered =>  true,
      :button =>  {
        :id =>  'tuition-fee-request-callback-modal',
        :button_id =>  'tuition-fee-request-callback',
        :text =>  'Schedule a phone call',
        :after_text =>  'with an Academic Advisor to learn about the pricing in detail.',
        :link =>  ''
      }
    },
    :upskilling_us => {
      :title =>  "How do I begin my upskilling journey with Scaler?",
      :pointers =>  [
        {
          :image =>  "academy/us/svg/ChalkboardTeacherUpskill.svg",
          :desc =>  "Attend our Webinar",
          :order =>  "one"
        },
        {
          :image =>  "academy/us/svg/ClipboardText.svg",
          :desc =>  "Take our Entrance Quiz",
          :order =>  "two"
        },
        {
          :image =>  "academy/us/svg/Coins.svg",
          :desc =>  "Make the Payment",
          :order =>  "three"
        },
        {
          :image =>  "academy/us/svg/ChartLineUp.svg",
          :desc =>  "Start Upskilling",
          :order =>  "four"
        }
      ]
    },
    :masterclass_us => {
      :title =>  "Still not sure if Scaler Academy is the right fit for your career?",
      :subtitle =>  "",
      :description =>  "You're working hard to take your career to the next level, and you've made it far! Get a glimpse of what it's like to learn at Scaler.",
      :image =>  "academy/us/webp/masterclass_lady.webp",
      :cta =>  {
        :webinar_text =>  "Attend a Webinar",
        :webinar_rcb_text =>  "Talk to our academic advisors",
        :book_session_before_cta =>  "Don't want to wait? ",
        :book_session_cta =>  "Schedule a call now"
      }
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
    }
  }

  CoursePageTemplateService.new(
    title: "US Academy Software engineer",
    content: content
  ).execute
end