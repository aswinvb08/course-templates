class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
        def up
          return unless Rails.is_scaler?
      
          Course.find_by(:slug => "data-structures-and-algorithms")&.destroy
            content = {:metadata => {:program => "academy", :header => "", :links => [{:url => "#curriculum", :text => "Curriculum"}, 
                    {:url => "#careers", :text => "Placement"}, {:url => "#mentors", :text => "Mentor"}, 
                    {:url => "#testimonial", :text => "Review"}, {:url => "#faq", :text =>"FAQ"}]}}
            content.merge!(:banner => {:heading => "<h1><b>Master Data Structures and Algorithms With the Scaler Academy Program</b></h1>", 
                    :content => ["Secure product interviews with understanding of crucial data structures and algorithms, and their implementation", 
                    "Build intuition on the inner workings of various DSA, a foundational skill for any top software engineer", 
                    "Clear your concepts and know which data structure to use for the most optimum build"],
                    :background_image => "course_page/banner/bannernew.png",
                    :title => "Master The Fundamentals of Computer Programming with Scaler Academy"})
            content.merge!(:briefing => {:heading => "<h2><span style='font-size: 2.2rem;'>Why</span> <b><span class='highlight' style='height: 5rem; font-size: 2.2rem;'>Data Structures and Algorithms?</span></b></h2>",
                    :places => [{:name => "<h3><b>What are Data Structures?</b></h3>",
                    :desc => "Data Structures are typically used to organize, process, retrieve and store data on computers 
                    for efficient use. Having the right understanding and using the right data structures 
                    helps software engineers write the right code."},
                    {:name => "<h3><b>What are the types of Data Structures?</b></h3>",
                    :desc => "There are two types of Data structures -
                    <li><b>Linear Data structure:</b> If the elements of a data structure result in a sequence or a 
                    linear list then it is called a Linear data structure. Every data element is connected 
                    to its next and sometimes previous element in a sequential manner. 
                    Example - Arrays, Linked Lists, Stacks, Queues, etc.</li>
                    <li><b>Non-linear Data structure:
                    </b> If the elements of a Data structure result in a way that the traversal of nodes is 
                    not done in a sequential manner, then it is a Non-linear data structure. 
                    Its elements are not sequentially connected, and every element can attach 
                    to another element in multiple ways. Example - Hierarchical data structure like trees.</li>"},
                    {:name => "<h3><b>Why are Data Structures important?</b></h3>",
                    :desc => "Data structures are a key component of Computer Science and help in understanding the 
                    nature of a given problem at a deeper level. They're widely utilized in Artificial Intelligence, 
                    operating systems, graphics, and other fields. If the programmer is unfamiliar with data 
                    structure and Algorithm, they may be unable to write efficient data-handling code.
                    <li>A strong grasp of this is of paramount significance if you want to learn how to organize 
                    and assemble data and solve real-life problems</li>
                    <li>Almost all product-based companies look at how strong you are at data structures, 
                    so it will also help you in your day-to-day work</li> 
                    <li>Knowing when to apply the proper data structures is an important step to write
                     efficient code by managing data properly</li>"}]})
            content.merge!(:glance => {:heading => "<h2><span class='highlight'>Key highlights</span> of the Scaler Academy's program</h2>",
                    :sub_heading => "Our program is designed to help you become an expert in Data structures and Algorithms and ace product interviews to scale up in your tech career.",
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
                          :choice => 'And/Or',
                          :module_detail_pointers_detail => []
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
                        }
            )
            content.merge!(:career => {:heading => "<h2><span class=\"highlight\">Career Services</span></h2>", 
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
            content.merge!(:people => {:heading => "Gain confidence in <b>Data Structure concepts</b>, taught by 
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
            content.merge!(:testimonials => {:heading => "<h2>Our success <span class=\"highlight\">lies in our learners</span> success stories", 
                        :sub_title => "Read the reviews by Scaler Alumni on how Scaler Academy Program has helped them become solid Data structures and Algorithms Experts</h2>",
                        :content => [{:id => "testimonial_modal_A1", :personImage => "academy/testimonial_images/Vishal.jpg", :name => "Vishal Pattni", 
                        :title => "SDE3", :companyName => "Townscript", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                        :desc => "I am elated to share that I have joined Townscript as a Software Engineer. All thanks to Scaler Academy for providing me with the guidance, skills, and knowledge I needed. When it comes to preparing for Product companies, there is a vast ocean of resources where one can easily get lost. But the curriculum at Scaler is well-framed and industry-vetted that I was able to learn all that is expected of a Software Engineer. 
                        Not only did I learn DSA, but also brushed my core skills which will remain with me for the rest of my life. I would like to thank the team for creating Scaler Academy, the best of its kind. 
                        Special thanks to my mentor for guiding me & sharing his valuable experiences that helped me learn better. Not to forget the amazing peers who have been a constant motivation in this journey. Lastly, thanks to the recruiter team who helped me find this amazing opportunity.", 
                        :cta => "Read more", :link => "https://www.linkedin.com/feed/update/urn:li:activity:6826145025169195008/", 
                        :linkedin => "https://www.linkedin.com/in/vishal-pattni/"}, 
                        {:id => "testimonial_modal_A2", :personImage => "academy/testimonial_images/Dolly.jpg", 
                        :name => "Dolly Vaishnav", :title => "SDE2", :companyName => "Ola", :mediumName => "", 
                        :mediumUrl => "academy/svg/scaler-logo.svg", :desc => "I am extremely delighted to share that I will be joining Ola as a Software Development Engineer soon. 
                        Being a tier-3 college graduate, this journey to one of the top companies of India was not at all easy. I faced almost all kinds of emotions during my job hunt, but I'm overjoyed and humbled by the milestone I've achieved. For that, I would like to give special thanks to Scaler Academy for helping me in this journey. A big thanks to all the amazing instructors that made the complex topics so easy to grasp. I feel that my regular DSA practice and overall prep helped me gain momentum in this journey.
                        A big shoutout to my mentor for constantly guiding me throughout the journey. He is the best mentor one could ever ask for. Lastly, I would like to thank the recruiter team for guiding me through the interview process. They were always there whenever I needed help.", 
                        :cta => "Read more", :link => "https://www.linkedin.com/posts/activity-6805138030706405376-fbiM/", 
                        :linkedin => "https://www.linkedin.com/in/dollyvaishnav198/"}, 
                        {:id => "testimonial_modal_A3", :personImage => "academy/testimonial_images/Dhruv.jpg", 
                        :name => "Dhruv Khandelwal", :title => "SDE2", :companyName => "Clevertap", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                        :desc => "I am happy to share that I have joined ThoughtWorks as an Application Developer. After experiencing a couple of failed & awkward interviews, I realized I needed to work on my skills in order to crack them. From building the foundations of DSA to simplifying the concepts of System Design, the program delivered EXACTLY what it said. Even the teachers and TAs tackled each problem in an easy and well-defined structure. The curriculum here is well thought out which added discipline to my routine.
                        It was only after I joined Scaler Academy I received offers from multiple companies, that honestly felt unreal. Thanks to Scaler for creating this platform and a big shoutout to my mentors who not only guided me but also made a proper roadmap for me to be able to achieve success in interviews. I would also like to thank the recruitment team for their help and support.", 
                        :cta => "Read more", :link => "https://www.linkedin.com/posts/dhruv-khandelwal-aa087312a_i-am-happy-to-share-that-i-have-joined-thoughtworks-activity-6811016104656330752-6h0O", 
                        :linkedin => "https://www.linkedin.com/in/dhruv-khandelwal-aa087312a/"}, 
                        {:id => "testimonial_modal_B2", 
                        :personImage => "academy/testimonial_images/Ram.jpg", :name => "Ram Deepak Pedapati", :title => "Software Engineer", 
                        :companyName => "Amazon", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                        :desc => "I am excited to share that I have received offers from Amazon, Myntra, D.E. Shaw (QTE). I would like to thank Scaler Academy for upskilling my knowledge about DSA & System Design. I am grateful to the founders of Scaler Academy for creating such a wonderful learning platform. I feel blessed to have the finest instructors & mentors. 
                        I am extremely glad to have gotten constant support from my mentor who has helped me through the interview process, thank you Scaler for introducing me to a big brother. Lastly, would like to thank the recruitment team for bringing in so many interview opportunities.", 
                        :cta => "Read more", :link => "https://www.linkedin.com/posts/ram-deepak-pedapati-5994b8169_thankyousomuch-gratitute-amazon-activity-6812332824377589760-2aPK", 
                        :linkedin => "https://www.linkedin.com/in/ram-deepak-pedapati-5994b8169/"},
                        {:id => "testimonial_modal_B3", 
                        :personImage => "academy/testimonial_images/Gayatri.jpg", :name => "Gayatri Medarametla", :title => "Software Engineer", 
                        :companyName => "LendingKart", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                        :desc => "I am extremely thrilled that I will be joining Lendingkart as a Software Engineer. Grateful to Scaler Academy for helping me improve my problem-solving skills and making me understand DSA in a simpler way. Trees, Graphs related problems have always been a nightmare for me. Never imagined solving such problems with ease, thus, would like to thank the Scaler team for their tremendous support. Much thanks to the recruitment team who helped me through the recruitment related process. Thank you everyone from Scaler for all the support and guidance.", 
                        :cta => "Read more", :link => '#', 
                        :linkedin => "https://www.linkedin.com/in/gayatri-medarametla-51176a181/"},
                        {:id => "testimonial_modal_B3", 
                        :personImage => "academy/testimonial_images/Fazeel.jpg", :name => "Fazeel Usmani", :title => "Software Engineer", 
                        :companyName => "Workspan", :mediumName => "", :mediumUrl => "academy/svg/scaler-logo.svg", 
                           :desc => "I am pleased to share that I have joined WorkSpan as a Software Engineer. For this, I would like to thank Scaler Academy for teaching me how to think rather than only showing me the ways to solve a problem. Thanks to the Scaler team for teaching how large-scale systems are built. Other than that, thanks to all the instructors for teaching structures & algorithms, backend development and for teaching me recursion, concurrency, and Redis.
                        This program has also made me strong in computer fundamentals (CN, DBMS & OS). Lastly, I would like to thank the recruiter team for arranging interviews with the companies.", 
                            :cta => "Read more", :link => "https://www.linkedin.com/posts/fazeel-usmani_scaleracademy-dsa-softwareengineer-activity-6825052517848625152-GWUi", 
                            :linkedin => "https://www.linkedin.com/in/gayatri-medarametla-51176a181/"}], 
                        :content2 =>[]})
            content.merge!(:join => {:heading => "Connect with an Academic Counsellor", :button => [{:id => "request_callback__one", 
                        :text => "REQUEST A CALLBACK", :link => ""}]})
            content.merge!(:tuition_fee => {:heading => "<b>Tuition Fee<b>", :title_img => "academy/svg/money-logo.svg", 
                        :subtitle => "Total fee: Rs 2.99L inclusive of GST. You also get scholarships upto Rs 25,000 and super 
                        affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
                        if you choose to withdraw.", :title_content => "With scholarship & EMI options, your payment can be as 
                        low as Rs 9,811 per month - that's like your monthly grocery bill!", 
                        :buttons => [{:id => "tuition_modal_one", :text => "VIEW EMI PLANS", :link => ""}, 
                        {:id => "tuition_modal_two", :text => "SCHOLARSHIP DETAILS", :link =>""}]})
            faq_list1 = [{:heading => "<b>Why are data structures important for coding interviews?</b>", 
                        :desc => "As a software engineer/programmer, one should understand the core concepts 
                        of data handling. Understanding data structures and algorithms will benefit candidates 
                        in coding interviews, as they will be able to write efficient code to handle the data 
                        presented by the interviewer/interviewers. They can write code in any programming language 
                        with minimal effort"},
                        {:heading => "<b>What are the applications of data structure and algorithms?</b>", 
                        :desc => "Product companies worldwide screen applicants based on their grasp of 
                        data structures and algorithms. Aside from getting through to product-based companies, 
                        the application of data structures and algorithms in the tech world is huge. DSA has been 
                        the core of computer programming from the beginning and has been the building block of the 
                        software development process, it is incorporated into all of the important languages. 
                        The efficiency of software development depends on the choice of an appropriate data structure 
                        and algorithm"},
                        {:heading => "<b>What is the best coding language to learn data structures?</b>", 
                        :desc => "There are a number of coding languages with data structures. Among them, 
                        C++ and Java stand out for their ease in using DSA. Python, Javascript are some other 
                        notable languages to learn data structures"},
                        {:heading => "<b>How to master data structures and algorithms?</b>", 
                        :desc => "The key to mastering DSA is to practice as many problems as possible 
                        and do so consistently. We provide a pool of problems focused on data structures and 
                        algorithms to help you practice as much as you want, stay consistent, and track your 
                        progress. Establishing a solid foundation is crucial so staying patient and continuing 
                        the pace of learning will eventually pay off"},
                        {:heading => "<b>What does Scaler’s Data Structures and Algorithms course cover?</b>", 
                                :desc => "Data Structures and Algorithms module, which is covered under the Scaler Academy Program will give
                                 you expert-level knowledge of DSA and prepare you for interviews that will help advance 
                                 your career. Students will receive advanced and valuable training in data structures, algorithms, 
                                 and large-scale systems design, as well as gain insight into how various DSAs work. Recursion, arrays, 
                                 linked lists, stacks, queues, strings, binary search, trees, heaps, arithmetic operators, loops, etc., will 
                                 also be covered by experienced instructors."},
                        {:heading => "<b>Why should you take Scaler’s Data Structures and Algorithms course?</b>", 
                                :desc => "Enrolling in the Scaler Academy program, which covers Data Structures and Algorithms will prepare 
                                you for interviews and help you advance your career. You’ll gain extensive practical experience by working on 
                                real-world projects. Students are provided with a well-structured curriculum curated by industry experts that 
                                combines CS basics, web development skills, and fundamental DSA skills that will prepare them for technical 
                                interviews. Besides improving fundamental DSA skills, our instructors and mentors are well-equipped 
                                to assist candidates with behavioral interviews."},
                        {:heading => "<b>Is Data Structures and Algorithms course difficult to learn?</b>", 
                                :desc => "No, learning Data Structures and Algorithms is not difficult as long as you have the 
                                motivation to learn. Developing this skill or knowledge simply requires practice and time. Once you’ve learned the 
                                fundamentals of data science, learning algorithms is a great next step."},
                        {:heading => "<b>Who should take this Data Structures and Algorithms course?</b>", 
                                :desc => "Any working professional interested in pursuing or upskilling their career in software engineering, 
                                development, and programming can enroll in this program."},
                        {:heading => "<b>Is a certificate provided at the end of the course?</b>", 
                                :desc => "Yes, Scaler Academy will issue you a certificate upon completion of the program."},
                        {:heading => "<b>What if I miss a lecture during the course?</b>", 
                                :desc => "There is no need to worry; during the course, all lectures will be recorded, and you will be able to access them afterward."}]
            content.merge!(:faq => {:main => [{:heading => "Program", :list => faq_list1}]})
    
            CoursePageTemplateService.new(
                title: "Data Structures And Algorithms",
                content: content
                ).execute
            end
            
            def down
                raise ActiveRecord::IrreversibleMigration
            end
        end