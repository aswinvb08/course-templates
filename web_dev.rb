class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
    def up
      return unless Rails.is_scaler?
  
      Course.find_by(:slug => "web-development")&.destroy
      content = {:metadata => {:program => "academy", :header => "", :links => [{:url => "#curriculum", :text => "Curriculum"}, 
        {:url => "#careers", :text => "Placement"}, {:url => "#mentors", :text => "Mentor"}, 
        {:url => "#testimonial", :text => "Review"}, {:url => "#faq", :text =>"FAQ"}]}}
        content.merge!(:banner => {:heading => "<h1><b>Master Web Development with the Scaler Academy Program</b></h1>", 
                :content => ["Get down and deep into how HTML, CSS and JavaScript work together, and build beautiful websites", 
                "Master the Fundamentals of Web Development, Web Programming, and Database Management from scratch", 
                "Learn how popular web frameworks like ReactJS and NodeJS are used in backend and frontend"],
                :background_image => "course_page/banner/bannernew.png",
                :title => "Build An Impressive Portfolio and Kickstart Your Career"})
        content.merge!(:briefing => {:heading => "<h2>An Introduction to <b><span class='highlight'>Web Development</span>?</b></h2>",
                :places => [{:name => "<h3><b>What is Web Development?</b></h3>",
                :desc => "There's a lot of work that's done behind the scenes to make a website look great, work well, and provide 
                an excellent user experience. Yes, we are referring to web development which involves building, creating, 
                and maintaining new and existing websites. It can range from developing a simple static page of plain text 
                to complicated web applications, social networking pages, and electronic businesses. Web development includes 
                aspects such as web design, web programming, and database management. The presence of these tools makes 
                it easier for anyone wanting to create or edit their own website."},
                {:name => "<h3><b>Why is Web Development important?</b></h3>",
                :desc => "The current world's environment makes it almost impossible to do business without a good website, 
                and this is where web design and web development come into play. Maintaining an updated website means owning 
                a key to the primary platform that showcases your products and services to the netizens. 
                The best way to do that is through learning web development as it conveys information the right way. 
                Additionally, you can tackle SEO, attract potential customers/clients, convey messages, and conduct e-business."},
                {:name => "<h3><b>Why should you choose a career in Web Development?</b></h3>",
                :desc => "Web development is in high demand and well paid around the globe, making it a great career option. Having 
                a solid grasp of Web Development will help you to secure a promising career right after you complete your course. 
                Besides, this field is constantly in demand; evolving and challenging, which means you’ll always have many chances 
                to explore new tools, technologies and learn new skills. The high demand, easy-to-learn and fun-to-experience 
                lifestyle of a web developer makes it an ideal career choice for someone seeking to learn code. Having said that,  
                Web Development is the field that provides a plethora of opportunities for hands-on learning."}]})
        content.merge!(:glance => {:heading => "<h2><span class='highlight'>Key highlights</span> of the Scaler Academy's <b>Web Development Program</b></h2>",
                :sub_heading => "Learn Web Development as part of the Scaler Academy course and get a head-start on your career as a Web Developer.",
                :cards => [{:img => "academy/svg/at-a-glance/structured.svg", :title => "<b>Structured, 
                industry-vetted curriculum</b>"},
                {:img => "academy/svg/at-a-glance/live-classes.svg", :title => "<b>Live classes</b> led by 
                <b>faculty members</b> with hands-on experience"},
                {:img => "academy/svg/at-a-glance/project.svg", :title => "Intensive <b>practical experience</b> 
                through <b>real-life projects and applications</b>"},
                {:img => "course_page/svg/Aspirational-Network.svg", :title => "<b>Aspirational network of peers</b>, 
                across batches and backgrounds"},
                {:img => "course_page/svg/Career-Support.svg", :title => "<b>Regular 1:1 mentorship</b> 
                from product industry veterans"},
                {:img => "course_page/svg/Mentorship.svg", :title => "<b>Career support</b> through mock interviews, 
                profile building, and referral networks"}]})
        content.merge!(:academy_curriculum => 
          {:sections => [
              {
                :heading => 'Beginner',
                :duration => '13 Months'
              },
              {
                :heading => 'Intermediate',
                :duration => '11 Months'
              },
              {
                :heading => 'Advanced',
                :duration => '09 Months'
              }
            ],
            :modules => [
              {
                :label => 'Module - 1',
                :name => 'Introduction to Programming',
                :duration => '1 to 2 Months',
                :content => {
                  :duration => '1 to 2 Months*',
                  :duration_description => 'There are two types of Beginner batches. "Introduction to Programming" module is 1 month long for Beginner Refresher and 2 months long for Beginner Complete',
                  :module_detail_pointers => [
                    {
                      :name => 'Introduction to Programming',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Python OR Java',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Data Types and Operators',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Loops and Conditional Statements',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Functions',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => '1D & 2D Arrays',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Strings',
                          :module_detail_pointers_details => []
                        }
                      ]
                    }
                  ],
                  :read_next => 'Read Next: Module 2 - Programming Constructs'
                }
              },
              {
                :label => 'Module - 2',
                :name => 'Programming Constructs',
                :duration => '2 Months',
                :content => {
                  :duration => '2 Months',
                  :module_detail_pointers => [
                    {
                      :name => 'Programming Constructs',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Introduction to Time Complexity Analysis',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Arrays',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Number System, Bit Manipulation',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Maths for Programming',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Sorting and Hashing',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Recursion',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Introduction to Data Structures Fundamentals (Stacks, Linked Lists, Trees)',
                          :module_detail_pointers_details => []
                        }
                      ]
                    }
                  ],
                  :read_next => 'Read Next: Module 3 - Advanced DSA and CS Fundamentals'
                }
              },
              {
                :label => 'Module - 3',
                :name => 'Advanced DSA and CS Fundamentals',
                :duration => '4 Months',
                :content => {
                  :duration => '4 Months',
                  :module_detail_pointers => [
                    {
                      :name => 'Problem Solving Techniques',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Time Complexity Analysis',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Arrays',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Bit Manipulation',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Maths',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Recursion & Sorting',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Binary Search & 2 Pointers',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Hashing',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Pattern Matching Algorithms',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'Data Structures',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Linked Lists',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Stacks & Queues',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Trees',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Tries & Heaps',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'Advanced Problem Solving Techniques',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Greedy Algorithms',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Backtracking',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Dynamic Programming',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Graphs',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'Programming Language Internals**',
                      :description => '(To be conducted in inverted classroom model)',
                      :module_detail_pointers_detail => [
                      {
                        :name => 'Data Types and Syntax',
                        :module_detail_pointers_details => []
                      },
                      {
                        :name => 'Programming Paradigms for the Language',
                        :module_detail_pointers_details => []
                      },
                      {
                        :name => 'Collections framework/ standard library',
                        :module_detail_pointers_details => []
                      },
                      {
                        :name => 'Concurrency',
                        :module_detail_pointers_details => []
                      },
                      {
                        :name => 'Advanced Concepts and Common Pitfalls',
                        :module_detail_pointers_details => []
                      }
                    ]
                    },
                    {
                      :name => 'Database Management Systems',
                        :module_detail_pointers_detail => [
                        {
                          :name => 'SQL',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'Operating Systems',
                        :module_detail_pointers_detail => [
                        {
                          :name => 'Concurrency and Synchronization',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'Computer Networks',
                        :module_detail_pointers_detail => [
                        {
                          :name => 'Socket Programming',
                          :module_detail_pointers_details => []
                        }
                      ]
                    }
                    ],
                    :read_next => 'Read Next: Module 4 - Software and System Design'
                    }
                    },
                    {
                    :label => 'Module - 4',
                    :name => 'Software and System Design',
                    :duration => '3 Months',
                    :content => {
                    :duration => '3 Months',
                    :module_detail_pointers => [
                    {
                      :name => 'Object Oriented Design (LLD)',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'OOP',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Design Principles - SOLID',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Design Patterns',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'UML Diagrams & Schema Design',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Best Programming Practices (API Design and Project Structure)',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Concurrency and Multithreading',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Case Studies and Machine Coding (How to build real systems)',
                          :module_detail_pointers_details => []
                        }
                      ]
                    },
                    {
                      :name => 'System Design (HLD)',
                      :module_detail_pointers_detail => [
                        {
                          :name => 'Consistent Hashing',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Caching',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'CAP Theorem',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Distributed Systems & Databases',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'SQL and NoSQL',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Scalability',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Zookeeper + Kafka',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Location Based Services (S3, Quad Trees)',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Microservices & Containerisation (Docker)',
                          :module_detail_pointers_details => []
                        },
                        {
                          :name => 'Case Studies',
                          :module_detail_pointers_details => []
                        }
                      ]
                    }
                    ],
                    :read_next => 'Read Next: Module Projects'
                    }
                    },
                    {
                    :label => '',
                    :name => 'Module Projects',
                    :duration => '2 Months',
                    :content => {
                    :duration => '2 Months',
                    :module_detail_pointers => [
                    {
                      :title => 'FullStack Specialisation (Backend and Fullstack)',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'MVC',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'REST APIs',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'ORM',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'SpringBoot (or Django)',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Views',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Building a server',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Web architecture',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'HTML, CSS, Javascript in depth, Node.js',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Backend architecture, MongoDB, React / Redux',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Github, Version Control',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Capstone project',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :choice => 'Or',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :title => 'Data Engineering Specialisation',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Building efficient Data Processing Systems',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Advanced SQL',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Cloud Services - AWS, or GCP',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Developing ETL pipelines',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Map-Reduce Framework',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Big Data',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Data Warehousing & Modelling',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'OLAP, Dashboarding',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Workflow Orchestration',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Logging, and Monitoring',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'MapReduce, HiveQL, Presto',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => '3 Projects',
                      :module_detail_pointers_detail => []
                    }
                    ],
                    :read_next => 'Read Next: Advanced Electives'
                    }
                    },
                    {
                    :label => '',
                    :name => 'Advanced Electives',
                    :duration => '1 Month',
                    :content => {
                    :duration => '1 Month',
                    :module_detail_pointers => [
                    {
                      :title => 'DSA for Competitive Programming',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Combinatorics and Probability',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Matrix exponentiation',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Advanced Trees => Segment Tree, k-D Tree',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Disjoint Set Union',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Advanced Dynamic Programming',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Advanced Graphs => Bridges, Articulation point, Network Flow ',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :choice => 'And/Or',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :title => 'Product Management for Engineers',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Introduction to Product Management',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Product Thinking & Product Discovery',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Product Roadmap & Prioritization',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Mental Models for Product Managers',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Product Analytics',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Hands-on case study & Mixpanel session',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Delivery & Project Management',
                      :module_detail_pointers_detail => []
                    },
                    {
                      :name => 'Practical ways to apply PM lessons as an Engineer',
                      :module_detail_pointers_detail => []
                    }
                    ],
                    :read_prev => 'Read Prev: Module 1 - Introduction to Programming'
                    }
                    }
                    ]
                    })
        content.merge!(:career => {:heading => "<span class=\"highlight\">Career Services</span>", 
                :sub_heading => "Along with upskilling and preparing you to be a solid engineer, we will help 
                you with your job search and interview preparation as well!", 
                :cards => [{:img => "academy/svg/employer.svg", :content => "Access job opportunities 
                from our <b>100+ employer partners</b>"}, {:img => "academy/svg/community.svg", 
                :content => "Exchange job opportunities with our extensive <b>20K+ Scaler student 
                community</b>"}, {:img => "academy/svg/mock.svg", :content => "<b>Practice mock interviews</b> 
                with <b>people working in the industry</b>"}, {:img => "academy/svg/resume.svg", 
                :content => "Optimize your resume & LinkedIn profile with our <b>experienced experts</b>"}]})
        content.merge!(:partners => {:heading => "<span class=\"highlight\">Scaler <b>alumni</b> work</span> at 
                    reputed <b>tech organizations</b> and <b>promising startups</b>", 
                    :companies => ["google", "amazon", "microsoft", "adobe", "mindtickle", "flipkart", "goldman", "walmart", 
                    "myntra", "ola", "media", "olx", "nutanix", "atlassian", "paytm", "gojek", "paypal", 
                    "cleartax", "capillary", "oneplus", "uber", "wakefit", "toppr", "snapdeal", "nvidia", 
                    "intuit", "salesken", "zeta", "tekion", "samsung", "lucideus", "ajio", "needl", "delhivery","dgraph"]})
        content.merge!(:people => {:heading => "Gain confidence in <b>Web Development concepts</b>, taught by 
                    <span class=\"highlight\"><b>experienced instructors</b></span>", 
                    :description => "Our faculty comprises experts from Amazon, Google, Hotstar, Facebook, Microsoft to name a few, who 
                    have successfully built scalable systems", :instructors => [{:image => "academy/png/anshuman.png", :name =>"Anshuman Singh", 
                    :company => "facebook", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", :details => ["Co-founder of Scaler 
                    Academy and two-time ACM ICPC world finalist.", "Was one of the founding team members of Facebook Messenger and worked directly 
                    with Mark Zuckerberg on product development.", "Responsible for setting up Facebook's London office, the first Facebook 
                    Engineering office outside of the USA"], :showEx => true, :linkedin => "https://www.linkedin.com/in/anshumansingh26/"}, 
                    {:image => "academy/png/mohit.png", :name =>"Mohit Yadav", :company => "hotstar", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Built the infra to ingest data at 1 Tb/s at Nutanix", "Built the backend system for Hotstar that now handles 28M concurrent visitors 
                    and streams the IPL"], :showEx => true, :linkedin => "https://www.linkedin.com/in/mohit-yadav-33828230/"}, {:image => "academy/png/kshitij.png", 
                    :name =>"Kshitij Mishra", :company => "snapdeal", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", :details => ["Ex-Snapdeal", 
                    "As part of a 2 member SDE team at Snapdeal, managed the entire codebase of Snapdeal Seller Search services, helped Snapdeal move from highest 
                    available AWS model to the lowest within 4 months"], :showEx => true, :linkedin => "https://www.linkedin.com/in/kshitij-mishra-a5779334/"}, 
                    {:image => "academy/png/tarun.png", :name =>"Tarun Malhotra", :company => "media", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Ex-Media.net", "As Team Lead at Media.net, built the contextual ad-serving systems to handle 7M+ URLs/day, process 12M+ ad keywords", 
                    "Built ML systems that facilitated INR 10+ Cr. of annual revenue"], :showEx => true, :linkedin => "https://www.linkedin.com/in/tarun-malhotra-72973aa6/"}, 
                    {:image => "academy/png/abhimanyu.png", :name =>"Abhimanyu Saxena", :company => "fab", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Ex-Fab.com", "As employee #4 at Fab.com (NYC based ecommerce startup), scaled the company to unicorn status and architected the entire front-end, 
                    building a 300+ engineering team"], :showEx => true, :linkedin => "https://www.linkedin.com/in/abhimanyusaxena/"}, {:image => "academy/png/tushar.png", 
                    :name =>"Tushar Bisht", :company => "facebook", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", :details => ["Ex-Facebook", 
                    "As a Software engineer at Facebook US, co-created & scaled the 'Nearby Friends' features to 10M DAU", "Co-founded TownRush and successfully 
                    exited to Grofers in 2015 via acquisition"], :showEx => true, :linkedin => "https://www.linkedin.com/in/bisht-tushar/"}, {:image => "academy/png/pragy.png", 
                    :name =>"Pragy Agarwal", :company => "media", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Ex-Media.net", "As a Platform Engineer at Media.net, 
                    scaled low latency systems with millions of queries per second", "16+ years of coding experience across a variety of programming languages & paradigms. Has a keen eye 
                    for - good coding practices."], :showEx => true, :linkedin => "https://www.linkedin.com/in/pragyagarwal/"}, {:image => "academy/png/siddharth.png", 
                    :name =>"Siddharth Taneja", :company => "media", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Ex-Sapient, Directi", "Now front-end lead at IB & Scaler, 
                    he understands both service and product-based company environments", 
                    "Has developed the entire full-stack curriculum at Scaler and leads all full-stack engineering classes", 
                    "2000+ students have rated him on average 4.5 out of 5"], :showEx => true, 
                    :linkedin => "https://www.linkedin.com/in/siddharth-taneja-98596588/"}, 
                    {:image => "academy/png/utkarsh.png", :name =>"Utkarsh Gupta", :company => "google", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Ex-Google, Germany", "One of the highest rated coders from India - 2300 rating (6 stars) on Codechef and 2140 rating ('Master') 
                    on Codeforces ", "Ranked #1 in India in Google HashCode 2019", "Only 1 of 9 programmers globally to have cleared the 
                    Expert Level of Codechef's 'Certified Data Structures and Algorithms Programme' (CCDSAP)", "Worked in the 'Privacy 
                    and Data Protection Office' as a Software Engineer in Google Munich, Germany"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/utkarsh-gupta-065626140/"}, 
                    {:image => "academy/png/sundeep.png", :name =>"Sundeep Babbur", :company => "", 
                    :companylogo =>"academy/svg/urban.svg", :mediumName =>"linkedin", 
                    :mediumUrl =>"academy/svg/linkedin.svg", :details => ["Ex-Urban Piper", "Intial member of Urban Piper who built a 
                    scalable product to support multiple number of clients.", "Now tech lead of multiple products at Scaler Academy", 
                    "Active contributor in open source projects"], :showEx => true, :linkedin => "https://www.linkedin.com/in/sundeep-babbur/"}, 
                    {:image => "academy/png/sahil.png", :name =>"Sahil Bansal", :company => "scaler", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Qualified for ACM ICPC Amritapuri onsite-regionals 3 times in a row", "Started the coding culture at IIT Jammu, conducted workshops, 
                    mentored junior students and assisted as a TA in programming courses", "As an open source contributor, contributed to Github repositories with more than 300 stars"], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/sahilbansal17"}], :class => {:heading => "Balancing work, home and studies is tough. 
                    These uncertain times don't help. 
                    We've designed the program with your experience as our priority", 
                    :cards => [{:img => "academy/svg/live-class/Live-class-instruction.svg", :img_title => "<b>Live class instruction</b>", 
                    :content => "2 - 3 times a week for 1.5 hours each", :color => "flexibility-yellow"}, 
                    {:img => "academy/svg/live-class/Timing-determined-by-batch-students.svg", :img_title => "<b>Timing 
                    determined by batch students</b>", :content => "Typically on week-nights or weekends", :color => "flexibility-light-blue"}, 
                    {:img => "academy/svg/live-class/Access-to-assignments-tests-class-recordings.svg", 
                    :img_title => "<b>Access to assignments, tests & class recordings</b>", :content => "1 year post course completion free of cost", 
                    :color => "flexibility-pale-red"}, {:img => "academy/svg/live-class/Timely-doubt-resolution.svg", :img_title => "<b>Timely doubt resolution</b>", 
                    :content => "Via chat or phone call", :color => "flexibility-light-purple"}]}, 
                    :mentor_heading => "Take the informed leap in your 
                    career with <span class=\"highlight\"><b>guidance and interview</b></span> <b>prep from our mentors</b>", 
                    :mentor_subtitle => "1:1 Personalised Sessions are held bimonthly. Our mentors have helped thousands of students get clarity in 
                    their career paths and prepare for interviews through mock sessions", "mentors"=>[{:image => "academy/png/gaurav.png", 
                    :name =>"Gaurav Gupta", :company => "microsoft", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Currently a Senior Software Engineer at Microsoft IDC", "Total work experience of 7+ years across Xerox and GlobalLogic", 
                    "His expertise ranges from data structures to system design, JAVA, AWS, Kafka and Android to name a few", 
                    "His mentees admire his timely feedback and the fact that he frequently checks up on them"], 
                    :linkedin => "https://www.linkedin.com/in/ggupta20/"}, {:image => "academy/png/drishti.png", :name =>"Drishti Agarwal", :company => "amazon", :mediumName =>"linkedin", 
                    :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Currently an SDE at Amazon, London and previously at Microsoft IDC and Media.net", 
                    "Skilled in languages like Java, Python, AngularJS, React.js", "Some of her mentees have been 
                    placed in Amazon, Walmart and PlayGames."], 
                    :linkedin => "https://www.linkedin.com/in/drishtiag/"}, {:image => "academy/png/harshit.png", :name =>"Harshit Varshney", :company => "expedia", 
                    :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Currently with the Expedia Group and was earlier at Snapdeal and Wydr", 
                    "Skilled in various 
                    technical concepts like DSA, artificial intelligence & neural networks, 
                    DBMS, core java and is also a data processing specialist", "Some of his mentees have cracked 
                    jobs at OLX, ROIIM, and Lido Learning.", "He has a unique superpower of being able to empathise 
                    with mentees and give constructive feedback"], 
                    :linkedin => "https://www.linkedin.com/in/harshitvarshney"}, {:image => "academy/png/neha.png", :name =>"Neha Nigam", :company => "intuit", 
                    :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", :details => ["Senior Software Engineer at Intuit, with 7+ years of 
                    work experience", "Well versed with data Structures and algorithms, design algorithms, core java and mobile engineering as well", 
                    "Awarded the Bravo Award for outstanding performance in her career"], :linkedin => "https://www.linkedin.com/in/neha-nigam-76682122/"}, 
                    {:image => "academy/png/shishir.png", :name =>"Shishir Chandra", :company => "adobe", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Career spans from Cisco and Wipro to Inmobi, Apple 
                    and now Adobe and hence can related with software engineers of varied backgrounds", 
                    "Currently a Tech Lead at Adobe, he is proficient with both development 
                    technologies like Java and Linux to distributed and cloud technologies.", 
                    "His mentees have done well. One has 
                    joined Microsoft, and two others are due to join Dehlivery and Salesken soon. 
                    His mentees have praised him as an Excellent interviewer who nudges them to give their best"], 
                    :linkedin => "https://www.linkedin.com/in/shishir1911/"}, {:image => "academy/png/mragank.png", :name =>"Mragank Tolwani", :company => "cleartax", :mediumName =>"linkedin", 
                    :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Currently an Engineering Manager at ClearTax, 
                    he has also worked at Amazon and PayTM", "Well versed in advanced DBMS, 
                    computer networks and network security", "Some of his mentees are 
                    placed at startups like Playgames and LendingKart"], 
                    :linkedin => "http://www.linkedin.com/in/mragank05"}, 
                    {:image => "academy/png/shan.png", :name =>"Shan Mehrotra", :company => "myntra", :mediumName =>"linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :details => ["Currently a 
                    Senior Data Engineer with Myntra, with past experience with AIG and MiQ Digital.", 
                    "As a part of the data engineering team, he has worked on some remarkable python-based web services.", 
                    "His proficiency in technical concepts includes Pyspark, AWS, Python, Kafka, Android, and more.", 
                    "Some of his mentees have joined Nova (part of Flock) and Microsoft."], 
                    :linkedin => "https://www.linkedin.com/in/shanmehrotra/"}], 
                    "job_heading"=>"Job Opportunities", "job_image"=>"academy/svg/job.svg", 
                    "job_description"=>"You will have access to job postings and evaluation tests across our 500+ employer partners. 
                    These employers are across sizes and industries 
                    (tech MNCs and startups, software product, BFSI) and we strive to help you in case you need a referral"})
        content.merge!(:testimonials => {:heading => "<h2>Our success <span class=\"highlight\">lies in our learners</span> success stories</h2>", 
                    :sub_title => "Read the reviews by Scaler Alumni on how Scaler Academy Program has helped them become solid certified Web Developers",
                    :content => [{:id => "testimonial_modal_A1", :personImage => "academy/testimonial_images/Mayur.png", :name => "Mayur Kharche", 
                    :title => "SDE3", :companyName => "walmart", :mediumName => "Scaler", :mediumUrl => "academy/svg/scaler-logo.svg", 
                    :desc => "Scaler exceeded my expectations in a way I had never even thought possible. I expected a single mentor from Scaler, 
                    but I ended up getting several people who guided me throughout.", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/the-guidance-and-structure-of-scaler-academy-was-exactly-what-i-needed/", 
                    :linkedin => "https://www.linkedin.com/in/mayur-kharche/"}, {:id => "testimonial_modal_A2", :personImage => "academy/testimonial_images/Soumya.png", 
                    :name => "Soumya Darbari", :title => "SDE2", :companyName => "jio", :mediumName => "Scaler", 
                    :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "Scaler lived up to all the expectations and hype I'd heard about it. 
                    The mentorship was a standout aspect to me, and the instructors and TAs were helpful and 
                    excellent at what they did.", :cta => "Read more on", :link => "https://www.scaler.com/blog/scaler-academy-is-the-reason-i-could-upskill/", 
                    :linkedin => "https://www.linkedin.com/in/srd091/"}, {:id => "testimonial_modal_A3", :personImage => "academy/testimonial_images/samrat.jpg", 
                    :name => "Samrat Chakraborty", :title => "SDE2", :companylogo => "academy/png/LendingKart.png", :mediumName => "Scaler", :mediumUrl => "academy/svg/scaler-logo.svg", 
                    :desc => "Scaler played a pivotal role in my journey, as the constant guidance I received and 
                    the encouragement that was showered on me helped me learn better. The peer community is 
                    constructive, and the mentorship arrangement makes it all a fantastic experience.", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/scaler-academy-played-a-pivotal-role-in-my-journey-with-their-mentorship-and-guidance/", 
                    :linkedin => "https://www.linkedin.com/in/samrat-ch/"}, {:id => "testimonial_modal_B1", :personImage => "academy/testimonial_images/Pawan.png", 
                    :name =>"Pawan Yadav", :title => "Software Engineer", :companyName => "goldman", :mediumName => "Scaler", :mediumUrl =>" academy/svg/scaler-logo.svg", 
                    :desc => "Tarun Malhotra's System Design classes stood out to me in particular, his way of 
                    teaching has made me remember him even after nearly 6 months of completing the course.", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/scaler-academy-is-extremely-efficient-and-top-notch-at-what-they-do/", 
                    :linkedin => "https://www.linkedin.com/in/pawan-yadav-aa9291117/"}, {:id => "testimonial_modal_B2", 
                    :personImage => "academy/testimonial_images/mitush.jpg", :name => "Mitush Kushmith", :title => "Software Engineer", 
                    :companyName => "jio", :mediumName => "Scaler", :mediumUrl => "academy/svg/scaler-logo.svg", 
                    :desc => "The instructors were at the top of their game, and taught us everything on the 
                    topic starting from the basics. Both the DSA and System Design classes were top notch!", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/scaler-academy-was-a-game-changer-for-me/", 
                    :linkedin => "https://www.linkedin.com/in/kushmithmitush/"}, {:id => "testimonial_modal_B3", 
                    :personImage => "academy/testimonial_images/nirmit.png", :name => "Nirmit Jain", 
                    :title => "SDE 1", :companylogo => "academy/jpg/Sigmoid.jpg", :mediumName => "Scaler", 
                    :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "The mentorship arrangement and the peer 
                    culture has helped me evolve as a coder, and I am genuinely grateful for my association with 
                    Scaler.", :cta => "Read more on", :link => "https://www.scaler.com/blog/scaler-academy-has-been-the-guiding-light-in-my-journey/", 
                    :linkedin => "https://www.linkedin.com/in/nirmit-jain/"},{:id => "testimonial_modal_C1", 
                    :personImage => "academy/testimonial_images/anshul.jpg", :name => "Anshul Jain", 
                    :title => "Software Engineer", :companyName => "google", :mediumName => "Scaler", 
                    :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "What I like best about the Scaler program is 
                    that I can find help very quickly. We have to merely raise a help request, 
                    and within ten minutes, we receive assistance. Right from my teaching instructors to 
                    my peers at Scaler, I found everyone helpful and approachable.", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/i-credit-scaler-for-where-i-am-at-today/", 
                    :linkedin =>"https://www.linkedin.com/in/anshul-jain7/"}, {:id => "testimonial_modal_C2", 
                    :personImage => "academy/testimonial_images/Ashish.png", :name => "Ashish Sarkar", :title => "SE2", 
                    :companyName => "walmart", :mediumName => "Scaler", :mediumUrl => "academy/svg/scaler-logo.svg", 
                    :desc => "I wanted some guidance from industry stalwarts, and Scaler's mentorship 
                    aspect really surpassed my expectations. Scaler really shines in the field of System Design, 
                    which is a must for product companies.", 
                    :cta => "Read more on", :link => "https://www.scaler.com/blog/the-mentorship-aspect-really-blew-me-away/", 
                    :linkedin => "https://www.linkedin.com/in/ashish-sarkar/"}, 
                    {:id => "testimonial_modal_C3", :personImage => "academy/testimonial_images/deepika.jpg", 
                    :name => "Deepika Bagaria", :title => "SDE 2", :companyName => "amazon", :mediumName => "Scaler", 
                    :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "The instructors made us understand tha it's all 
                    about learning. The quality of teaching was something I'd never experienced before. Tarun sir's 
                    teaching and methodology has been the most impactful for me.", 
                    :cta => "Read more on", :link =>"https://www.scaler.com/blog/scaler-academy-changed-my-entire-life-and-outlook/", 
                    :linkedin => "https://www.linkedin.com/in/deepika-bagaria-499a97a4/"},
                    {:id => "testimonial_modal_D1", :personImage => "academy/testimonial_images/kritika.jpg", 
                    :name => "Kritika Agarwal", :title => "SDE2", :companyName => "microsoft", :mediumName => "Mail", 
                    :mediumUrl => "academy/svg/mail.svg", :desc => "I had joined Scaler mainly for learning. 
                    And the one thing that kept me motivated throughout was seeing the hard work all teachers put, 
                    taking classes everyday tirelessly late into the night.", 
                    :cta => "Read more on", :link => "academy/testimonial_images/review_kritika.jpg", 
                    :linkedin => "https://www.linkedin.com/in/kritika-agarwal-023165b5"},
                    {:id => "testimonial_modal_D2", :personImage => "academy/testimonial_images/baishali.jpg", 
                    :name => "Baishali Ghosh", :title => "SDE2", :companyName => "amazon", :mediumName => "Linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :desc => "Whether it is for upskilling or for a 
                    better opportunity,if you commit to this course,
                     the learnings that you take away are worth a lifetime.", 
                    :cta => "Read more on", :link => "https://www.linkedin.com/feed/update/urn:li:activity:6650067365918806017/", 
                    :linkedin => "https://www.linkedin.com/in/baishali-ghosh/"}, 
                    {:id => "testimonial_modal_D3", :personImage =>"academy/testimonial_images/kushal.jpg", 
                    :name =>"Kushal V Mahajan", :title =>"Tech Lead", "companyName"=>"toppr", 
                    :mediumName =>"Linkedin", :mediumUrl =>"academy/svg/linkedin.svg", :desc =>"Thank you Scaler Instructors for teaching DS 
                    Algo to a front-end guy. When I solved a backtracking question in 10-12 minutes, 
                    I had them (interviewers) there.", :cta =>"Read more on", 
                    :link =>"https://www.linkedin.com/posts/activity-6697152967222677504-fh0y/"}], 
                    :content2 =>[{:id =>"testimonial_modal_A4", :personImage =>"academy/testimonial_images/Brijesh.png", 
                    :name =>"Brijesh Sahoo", :title =>"SDE2", 
                    :companylogo =>"academy/png/tataaig.png", :mediumName =>"Scaler", 
                    :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"Scaler helped me channel my energy properly, 
                    revise things I had learned in college, and learn new things too! 
                    Their reputation for being educators and enthusiastic 
                    supporters of aspirants who dream big made me join the academy.", :cta =>"Read more on", 
                    :link =>"https://www.scaler.com/blog/scaler-academy-helped-me-become-a-problem-solver/", 
                    :linkedin =>"https://www.linkedin.com/in/brijesh-sahoo/"}, {:id =>"testimonial_modal_A5", 
                    :personImage =>"academy/testimonial_images/sai.jpg", :name =>"Sai Rohit", :title =>"SDE1", 
                    :companylogo =>"academy/png/WorkSpan.png", :mediumName =>"Scaler", :mediumUrl =>"academy/svg/scaler-logo.svg", 
                    :desc =>"The feedback that we gave in each class was taken seriously, and the instructors 
                    improved dynamically in each session. My expectations from Scaler was x, and they delivered 2x. 
                    Whatever I thought I would get, Scaler ended up giving me so much more!", 
                    :cta =>"Read more on", :link =>"https://www.scaler.com/blog/scaler-academy-was-the-main-factor-behind-my-improvement/", 
                    :linkedin =>"https://www.linkedin.com/in/sai-rohit"}, {:id =>"testimonial_modal_A6", :personImage =>"academy/testimonial_images/Raghvendra.png", 
                    :name =>"Raghvendra Pandey", :title =>"Backend Developer", "companyName"=>"jio", :mediumName =>"Scaler", 
                    :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"The course is structured in a way so that people who have a good 
                    grasp of the fundamentals of programming can better themselves in higher level topics, which are commonly asked 
                    in tech interviews.", :cta =>"Read more on", :link =>"https://www.scaler.com/blog/scaler-academy-made-me-consistent-in-my-work/", 
                    :linkedin =>"https://www.linkedin.com/in/raghvendra0202/"},
                    {:id =>"testimonial_modal_B4", :personImage =>"academy/testimonial_images/Bhavik.png", :name =>"Bhavik Dand", :title =>"Backend Developer", 
                    :companylogo =>"academy/png/clevertap.png", 
                    :mediumName =>"Scaler", :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"Getting insights from these industry insiders 
                    helps you unlock the secret codes to the game, 
                    which are guaranteed to make you a winner. Scaler Academy fulfilled my every expectation, and to anyone looking to upskill, 
                    I'd definitely recommend it!", :cta =>"Read more on", :link =>"https://www.scaler.com/blog/scaler-academy-fulfilled-my-every-expectation/", 
                    :linkedin =>"https://www.linkedin.com/in/bhavikdand/"}, {:id =>"testimonial_modal_B5", :personImage =>"academy/testimonial_images/suryanshu.jpg", 
                    :name =>"Suryanshu Gupta", :title =>"Software Developer", "companyName"=>"media", :mediumName =>"Scaler", 
                    :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"The way they taught was the aspect that stood out most to me. 
                    Each student was invited to give solutions, and every answer was dissected. No doubt was small 
                    enough, and every approach was thought about.", :cta =>"Read more on", 
                    :link =>"https://www.scaler.com/blog/scaler-academy-excelled-at-every-stage-and-helped-me-better-my-skills/", 
                    :linkedin =>"https://www.linkedin.com/in/suryanshu-gupta-065925172/"}, {:id =>"testimonial_modal_B6", :personImage =>"academy/testimonial_images/Sanket.png", 
                    :name =>"Sanket Mishra", :title =>"Frontend Developer", :companylogo =>"academy/svg/SpotDraft.svg", :mediumName =>"Scaler", 
                    :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"My experience at Scaler Academy gave me a newfound confidence. 
                    Scaler was my guide in this journey, and the data-backed methodology helped me achieve my set goal in the given time. 
                    The structure was such that I continually received a push to do better.", :cta =>"Read more on", 
                    :link =>"https://www.linkedin.com/in/sanket-mishra/", :linkedin =>"https://www.scaler.com/blog/scaler-academy-helped-me-achieve-my-set-goal-in-record-time/"}, 
                    {:id =>"testimonial_modal_C4", :personImage =>"academy/testimonial_images/ankur.jpg", :name =>"Ankur Kumar", :title =>"SDE2", "companyName"=>"zeta", 
                    :mediumName =>"Scaler", :mediumUrl =>"academy/svg/scaler-logo.svg", :desc =>"With Scaler Academy, I found the guide 
                    that I needed. Their classes helped restore my faith in my passion and made me feel confident 
                    about my abilities. The regularity of the classes made me more responsible and sincere in my 
                    learning approach.", :cta =>"Read more on", :link =>"https://www.scaler.com/blog/scaler-academy-was-the-guide-i-needed/", 
                    :linkedin =>"https://www.linkedin.com/in/ank-kumar/"}, {:id =>"testimonial_modal_C5", :personImage =>"academy/testimonial_images/Pankaj.png", 
                    :name =>"Pankaj Bhatia", :title =>"Sr. Software Engineer", "companyName"=>"adobe", :mediumName =>"Scaler", :mediumUrl =>"academy/svg/scaler-logo.svg", 
                    :desc =>"Every aspect of the course was well structured, and gave just what I needed. The instructors taught extremely well, the mentors were helpful 
                    and the course was designed keeping every need in mind.", :cta =>"Read more on", 
                    :link =>"https://www.scaler.com/blog/scaler-academy-was-the-major-reason-for-my-growth/", 
                    :linkedin =>"https://www.linkedin.com/in/bhatiapankaj20/"}, 
                    {:id =>"testimonial_modal_C6", :personImage =>"academy/testimonial_images/praphul.jpg", :name =>"Praphul Sinha", 
                    :title =>"Head Of Web Engg", :companylogo =>"academy/png/freecharge.png", :mediumName =>"Scaler", :mediumUrl =>"academy/svg/scaler-logo.svg", 
                    :desc =>"I was expecting mostly DSA, 
                    but apart from that, they taught a lot of math, a ton of problem solving, and a lot of other topics. 
                    I was really happy to see, since those are often the ones to be overlooked, but 
                    are essential parts of a well rounded approach to tech upskilling.", :cta =>"Read more on", 
                    :link =>"https://www.scaler.com/blog/scaler-academy-curriculum-and-teaching-is-world-class/", 
                    :linkedin =>"https://www.linkedin.com/in/praphulsinha/"}, {:id =>"testimonial_modal_D4", :personImage =>"academy/svg/mohini.svg", :name =>"Mohini Bansal", 
                    :title =>"SDE3", "companyName"=>"walmart", :mediumName =>"Quora", :mediumUrl =>"academy/svg/quora.svg", :desc =>"Scaler Academy was an excellent opportunity 
                    for me to gain the skills that I needed to make it big in the coding world.", :cta =>"Read more on", 
                    :link =>"https://www.quora.com/What-is-your-review-of-Scaler-Academy/answer/Mohini-Bansal-3", 
                    :linkedin => "https://www.linkedin.com/in/mohbansa/"}, {:id =>"testimonial_modal_D5", 
                    :personImage =>"academy/testimonial_images/nikhil.jpg", :name =>"Nikhil Bhargav", :title =>"SDE2", 
                    "companyName"=>"paypal", :mediumName =>"Mail", :mediumUrl =>"academy/svg/mail.svg", 
                    :desc =>"Hi Tarun (Scaler instructor) - This is Nikhil from September'19 batch. I just wanted to thank you. 
                    Your DP, Graph and HLD classes were really helpful, and with all the guidance from Scaler and you, 
                    I was able to get offers from Walmart / Groupon / PayTM for SE-3/SDE-2 role. 
                    I really wanted to thank you personally, all this was really helpful!", :cta =>"Read more on", :link =>"academy/testimonial_images/review_nikhil.png", 
                    :linkedin => "https://www.linkedin.com/in/nikhilbhargav000/"}, {:id =>"testimonial_modal_D6", :personImage =>"academy/testimonial_images/nipun.jpg", 
                    :name =>"Nipun Suradkar", :title =>"Wed Developer-2", "companyName"=>"media", :mediumName =>"Linkedin", :mediumUrl =>"academy/svg/linkedin.svg", 
                    :desc =>"Even though I only had 6 months experience,Media.net considered me on par with someone with at least 1.5 years. I was able 
                    to build this kind of knowledge and understanding with help from Scaler Academy.", :cta =>"Read more on", 
                    :link =>"https://www.linkedin.com/pulse/thank-you-scaler-academy-helping-me-get-placed-nipun-suradkar/", 
                    :linkedin => "https://www.linkedin.com/in/nipun-suradkar-5840b1171/"}]})
        content.merge!(:join => {:heading => "Connect with an Academic Counsellor", :button => [{:id => "request_callback__one", 
                    :text => "REQUEST A CALLBACK", :link => ""}]})
        content.merge!(:tuition_fee => {:heading => "<b>Tuition Fee<b>", :title_img => "academy/svg/money-logo.svg", 
                    :subtitle => "Total fee: Rs 2.99L inclusive of GST. You also get scholarships upto Rs 25,000 and super 
                    affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
                    if you choose to withdraw.", :title_content => "With scholarship & EMI options, your payment can be as 
                    low as Rs 9,811 per month - that's like your monthly grocery bill!", 
                    :buttons => [{:id => "tuition_modal_one", :text => "VIEW EMI PLANS", :link => ""}, 
                    {:id => "tuition_modal_two", :text => "SCHOLARSHIP DETAILS", :link =>""}]})
        faq_list1 = [{:heading => "<b>Are web developers in demand in 2023?</b>", 
                    :desc => "Yes, they are highly demanded. For those who don't know, web development 
                    is one of the rapidly growing and popular industries in the world. Many reports 
                    suggest the need for web developer jobs will grow by thirteen percent in the coming years."},
                    {:heading => "<b>What skills do you need to become a web developer?</b>", 
                    :desc => "In order to be a successful web developer you must be: 
                    <li>Interested in HTML, CSS</li> <li>Familiar with debugging, testing, and SEO</li>
                    <li>Understand UX/UI</li> <li>Interested in javascript, backend, frontend, bootstrap</li>
                    <li>Interactive and observant</li> <li>Adaptive & open to change</li>"},
                    {:heading => "<b>What does a web developer do?</b>", 
                    :desc => "The job of a web developer is to create, design, maintain, and update websites. 
                    They take care of all the technical aspects, functionality, performance, capacity through 
                    various programming tools. Other than this, web developers are responsible for debugging 
                    and installing application features as well as for integrating security measures."},
                    {:heading => "<b>Will I get a web development certification?</b>", 
                    :desc => "After the end of the course, you will receive a course completion certificate."}]
        content.merge!(:faq => {:main => [{:heading => "Program", :list => faq_list1}]})

        CoursePageTemplateService.new(
            title: "Web Development",
            content: content
            ).execute
        end
        
        def down
            raise ActiveRecord::IrreversibleMigration
        end
    end