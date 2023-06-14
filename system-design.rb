class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
  def up
    return unless Rails.is_scaler?

    Course.find_by(:slug => "system-design")&.destroy
    faq_list1 = [{:heading => "<b>Is there a way to improve my skills in System Design?</b>", 
        :desc => "To improve your system design skills, you must first gain specific knowledge 
        and master system design basics. Don't worry; we have prepped all that for you. Our 
        course covers a wide range of topics, including basic concepts, in-depth use cases, 
        design principles, practical assignments, explanation videos on how to approach 
        system design problems, and many more. This is the only way to improve your 
        system design skills and tackle the weak parts. We bring in instructors from top 
        tech companies who have built these systems themselves over multiple years of 
        experience, so share their learnings and pitfalls over the career so that the 
        systems you design are robust, scalable, modular, and extensible."}]
    content = {:metadata => {:jsonld => "true", :program => "academy", :header => "", 
            :links => [{:url => "#curriculum", :text => "Curriculum"}, 
            {:url => "#careers", :text => "Placement"}, {:url => "#mentors", :text => "Mentor"}, 
            {:url => "#testimonial", :text => "Review"}, 
            {:url => "#faq", :text => "FAQ"}]},
        :banner => { :breadcrumb => [{:cta => "Home", :link => "https://www.scaler.com/"},{:cta => "<b>Academy</b>", :link => "https://www.scaler.com/academy/"},{:cta => "<b>System Design Course</b>"}], :heading => "<h1><b>Learn System Design Fundamentals and Build Systems At Scale</b></h1>", 
            :content => ["Learn how to transform abstract statements into practical 
            software design and implement them in real life scenarios", 
            "Understand the inner workings of database systems, caches, messaging 
            queues and load balancers, and how to use them optimally", 
            "Deep dive into low-level and schema design for real world 
            applications and games that serve millions"],
            :background_image => "course_page/banner/bannernew.png",
            :title => "Take the First Step Towards Mastering System Design"},
        :briefing => {:heading => "<h2>Why <b><span class='highlight'>System Design</span></b>?</h2>",
            :places => [{:name => "<h3><b>What is System Design?</b></h3>",
            :desc => "System Design is the systematic approach that covers a wide range of 
            engineering concepts and principles for designing scalable systems that are 
            modular, reusable, and extensible.<br>Low-Level Design is the process of designing 
            software components, interfaces, and modules of systems in a modular, reusable, 
            extensible manner to meet the current/ future needs of any organization. 
            High-Level Design digs into depth of all related variables, including architecture, 
            required hardware/software components, how data travels and is stored throughout 
            the system, and how caching is done to optimize the system for fast response 
            times and reduced costs, etc. This includes choosing what kind of database to use, 
            like Cassandra or MySQL or something else, and making choices like SQL vs. NoSQL."},
            {:name => "<h3><b>Why is System Design important?</b></h3>",
            :desc => "A software engineer who understands both High Level and Low Level Design 
            performs better. It enables an engineer to make architectural decisions to make 
            the software system efficient and scalable while saving an organization's cost. 
            It allows one to distinguish between available databases, e.g., MySQL, PostgreSQL, 
            etc. It also enables one to find the best tool to solve a particular engineering 
            challenge, with tools like Messaging Queues, Load Balancers, etc.<br>
            System Design will:
            <li>Enhance the quality of software systems developed by engineers</li>
            <li>Save long-term engineers costs for a company</li>
            <li>Make software systems able to handle changing product 
            requirements and also handle large scale</li>"},
            {:name => "<h3><b>What are the key topics to consider when designing a system?</b></h3>",
            :desc => "To become a jack of systems design, you need to take into account 
            the following when building a software system:
            <li>Understand the product requirements (current as well as future) 
            and edge cases very well</li>
            <li>Create and document software and System Design, which includes Class Diagrams, 
            Schema Diagrams, Architectural High-Level Diagrams</li>
            <li>Understand the pros and cons of every software system like Databases, 
            Caches, etc., and when to use them</li>"}]},
        :glance => {:heading => "<h2><span class='highlight'>Key Highlights</span> of the System Design Module in the Scaler Academy Program</h2>",
            :sub_heading => "Become an expert at System Design with Scaler Academy. A necessary skill for any top software engineer, enable 
            yourself to learn these important concepts with ease and swiftness.",
            :cards => [{:img => "academy/svg/at-a-glance/structured.svg", :title => "Offers an industry-vetted <b>structured curriculum</b>"},
            {:img => "academy/svg/at-a-glance/live-classes.svg", :title => "<b>Access to recorded lectures</b> anytime, anywhere as per your convenience"},
            {:img => "academy/svg/at-a-glance/project.svg", :title => "<b>Complicated topics simplified</b> and thoroughly explained"},
            {:img => "course_page/svg/Aspirational-Network.svg", :title => "<b>Live classes</b> by experienced professionals and alumni"},
            {:img => "course_page/svg/Career-Support.svg", :title => "<b>1:1 mentorship</b> from industry veterans on a <b>regular basis</b>"},
            {:img => "course_page/svg/Mentorship.svg", :title => "<b>Career support</b> through a dedicated team, strong alumni network"}]},
        :academy_curriculum => {
          :heading => "<b>Curriculum</b> is designed to make you a <span class='highlight'><b>solid engineer</b></span>",
          :sections => [
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
                    :name => 'FullStack Specialisation (Backend and Fullstack)',
                    :module_detail_pointers_detail => [
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
                      }
                    ]
                  },
                  {
                    :choice => 'Or',
                    :module_detail_pointers_detail => []
                  },
                  {
                    :name => 'Data Engineering Specialisation',
                    :module_detail_pointers_detail => [
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
                    ]
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
                  :note1 => 'At least 1 Elective must be taken to complete the program',
                  :note2 => 'There is no maximum limit as of now, so you can take as many Electives as you like',
                  :module_detail_pointers => [
                  {
                    :name => 'DSA for Competitive Programming',
                    :module_detail_pointers_detail => [
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
                      }
                    ]
                  },
                  {
                    :name => 'Product Management for Engineers',
                    :module_detail_pointers_detail => [
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
                    ]
                  }
                  ],
                  :read_prev => 'Read Prev: Module 1 - Introduction to Programming'
                  }
                  }
                  ]
                  },
        :career => {:heading => "<h2><span class=\"highlight\">Career Services</span></h2>", 
            :sub_heading => "Along with upskilling and preparing you to be a solid engineer, we will help 
            you with your job search and interview preparation as well!", 
            :cards => [{:img => "academy/svg/community.svg", 
            :content => "Exchange job opportunities with our extensive <b>20K+ Scaler student 
            community</b>"}, {:img => "academy/svg/employer.svg", :content => "Access job opportunities 
            from our <b>100+ employer partners</b>"}, {:img => "academy/svg/resume.svg", 
            :content => "Optimize your resume & LinkedIn profile with our <b>experienced experts</b>"},
            {:img => "academy/svg/mock.svg", :content => "<b>Practice mock interviews</b> 
                with <b>people working in the industry</b>"}]},
        :partners => {:heading => "<span class=\"highlight\">Scaler <b>alumni</b> work</span> at 
            reputed <b>tech organizations</b> and <b>promising startups</b>", 
            :companies => ["google", "amazon", "microsoft", "adobe", "mindtickle", "flipkart", "goldman", "walmart", 
            "myntra", "ola", "media", "olx", "nutanix", "atlassian", "paytm", "gojek", "paypal", 
            "cleartax", "capillary", "oneplus", "uber", "wakefit", "toppr", "snapdeal", "nvidia", 
            "intuit", "salesken", "zeta", "tekion", "samsung", "lucideus", "ajio", "needl", "delhivery","dgraph"]},
        :people => {:heading => "Gain confidence in <b>System Design concepts</b>, taught by 
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
            :details => ["Ex-Google, Germany", "One of the highest rated coders from India - 2300 rating (6 stars) on Codechef and 2140 rating ('Master) 
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
            :mentor_subtitle => "1:1 Personalised Sessions are held bimonthly. Our mentors have helped thousands of students get 
            clarity in their career paths and prepare for interviews through mock sessions", "mentors"=>[{:image => "academy/png/gaurav.png", 
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
            (tech MNCs and startups, software product, BFSI) and we strive to help you in case you need a referral"},
    :testimonials => {:heading => "<h2>Our success <span class=\"highlight\">lies in our learners</span> success stories.</h2>", 
            :sub_title => "Read the reviews by Scaler Alumni on how Scaler Academy Program has helped become solid certified System Design Engineer",
            :content => [{:id => "testimonial_modal_A1", :personImage => "academy/testimonial_images/Yeswanth.jpg", :name => "Yeswanth kokku", 
            :title => "SDE3", :companyName => "ZS", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
            :desc => "I joined Scaler Academy to upskill myself for System Design and DSA. The way the curriculum was designed & the way we were engaged in the course is highly commendable. Before joining, 
            the number of problems I solved was far too less. But, after joining Scaler I started solving around 350+ problems and this would have not been possible without the help of the instructors & TA's. 
            A major shoutout to my mentor, he was so approachable that I didn't shy away from discussing if any problem came up. Assistance from Scaler's Talent Acquisition Team was highly helpful
            which made the interview process smooth and hassle-free.", 
            :cta => "Read more", :link => "https://www.linkedin.com/posts/yeswanth-kokku-13a311199_appreciation-post-i-have-joined-scaler-activity-6801825086342094848-sjTS/", 
            :linkedin => "https://www.linkedin.com/in/yeswanth-kokku-13a311199/"}, 
            {:id => "testimonial_modal_A2", :personImage => "academy/testimonial_images/Ashish.png", 
            :name => "Ashish Kumar", :title => "SDE2", :companyName => "Nouveau Labs", :mediumName => "", 
            :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "I enrolled in the six-month-long course, which was simply AWESOME. I appreciate the effort of Scaler team (Instructors, TA, Mentors, Recruiters). All of them helped me in boosting my confidence, skills & knowledge. I learned System Design, DS/Algo and other core subjects and the most important thing was I gained the confidence I needed to face any interview. 
            Thankful to the Scaler organization for bringing such a learning platform into existence. Special thanks to my mentor who always encouraged & supported me and my recruiter for providing all the great opportunities & for being so supportive during the interview processes.", 
            :cta => "Read more", :link => '#', 
            :linkedin => "https://www.linkedin.com/in/ashish-kumar-b7ba3a106/"}, 
            {:id => "testimonial_modal_A2", :personImage => "academy/testimonial_images/Tanuj.jpg", 
            :name => "Tanuj Pathak", :title => "SDE2", :companyName => "Brick&Bolt", :mediumName => "", 
            :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "Thanks to Scaler Academy, I am super excited and thrilled to share that I will be joining Brick&Bolt as a Software Developer. This has been possible as Scaler helped me upskill and improve my knowledge of DS Algorithm, System Design, and not forgetting the weekly lectures & daily assignments that helped me understand the concepts in a far better way. Thanks to Scaler team for creating this learning platform. 
            Special thanks to all the mentors for teaching the DS concepts in-depth and the recruiters for guiding me throughout the interview process.", 
            :cta => "Read more", :link => "https://www.linkedin.com/feed/update/urn:li:activity:6804271674050060288/", 
            :linkedin => "https://www.linkedin.com/in/tanuj-pathak/"},
            {:id => "testimonial_modal_B2", 
            :personImage => "academy/testimonial_images/Lokesh.jpg", :name => "Lokesh Vishnoi", :title => "Software Engineer", 
            :companyName => "Brick&bolt", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
            :desc => "I would love to thank Scaler Academy for improving my learning curve & skills in DS and System Design. The curriculum provided me with the structure I was looking for and that strengthened me in various aspects. Really very grateful to all the Scaler instructors for their guidance & support. 
            Special thanks to the recruiter team who helped me through the onboarding process and also to all the amazing mentors.", 
            :cta => "Read more", :link => '#', 
            :linkedin => "https://www.linkedin.com/in/lokesh-vishnoi/"},
            {:id => "testimonial_modal_B2", 
                :personImage => "academy/testimonial_images/Anindo.jpg", :name => "Anindo Ghosh", :title => "Software Engineer", 
                :companyName => "Nurture.farm", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                :desc => "Thanks to Scaler Academy, I am excited to share with you that I will be joining Nurture.farm as a Software Engineer. This has been possible as Scaler helped me upskill and improve my knowledge of DSA and System Design. The weekly lectures along with the assignments helped me in understanding the concepts to the core. I would like to thank the team for providing such a great learning platform that Scaler is. 
                Special thanks to the recruiters for guiding me through the entire interview process.", 
                :cta => "Read more", :link => "https://www.linkedin.com/feed/update/urn:li:activity:6804008950690791425/", 
                :linkedin => "https://www.linkedin.com/in/anindo7/"}], 
            :content2 =>[]},
        :join => {:heading => "Connect with an Academic Counsellor", :button => [{:id => "request_callback__one", 
        :text => "REQUEST A CALLBACK", :link => ""}]},
        :tuition_fee => {:heading => "<b>Tuition Fee of <span class='highlight'>Scaler Academy Program<span><b>", :title_img => "academy/svg/money-logo.svg", 
            :subtitle => "Total fee: Rs 3.69L inclusive of GST. You can get super 
            affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
            if you choose to withdraw.", :title_content => "With EMI options, your payment can be as low as 8,628 per month- that's like your monthly grocery bill!", 
            :buttons => [{:id => "tuition_modal_one", :text => "VIEW EMI PLANS", :link => ""}]},
        :faq => {:main => [{:heading => "Program", :list => faq_list1}]}}
                              
    CoursePageTemplateService.new(
      title: "System Design",
      content: content
    ).execute
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
