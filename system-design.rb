class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
  def up
    return unless Rails.is_scaler?

    Course.find_by(:slug => "system-design-course")&.destroy
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
          :banner => { :breadcrumb => [{:cta => "Home", :link => "https://www.scaler.com/"}, 
                    {:cta => "<b>Academy</b>", :link => "https://www.scaler.com/academy/"},
{:cta => "<b>System Design</b>"}], :heading => "<h1><b>Learn System Design Fundamentals and Build Systems At Scale</b></h1>", 
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
          :curriculum => {:features => {:title => "<h2><b><span class=\"highlight\">Tried & Tested</span> Curriculum</b>, 
              curated <b>by Industry Experts</b></h2>", :subtitle => "", :market => {:head => "Products in the markets are", 
              :items => [{:img => "course_page/svg/unstrct.svg", :desc => {:title => "Unstructured", 
              :subtitle => "Scattered articles, blogs & videos need extra effort to stitch it all together"}}, 
              {:img => "course_page/svg/theory.svg", :desc => {:title => "Theoretical", :subtitle => "Limited practical work"}}, 
              {:img => "course_page/svg/imperson.svg", :desc => {:title => "Impersonal", :subtitle => "Recorded videos & articles with no personalisation"}}, 
              {:img => "course_page/svg/irindus.svg", :desc => {:title => "Not industry-relevant", 
              :subtitle => "Old, un-refreshed content"}}]}, 
              :scaler => {:head => "Scaler\'s curriculum is", 
              :items => [{:img => "academy/svg/structured.svg", :desc => {:title => "Structured", :subtitle => "Thoughtfully designed curriculum helps 
              you to emerge confident & comfortable"}}, {:img => "academy/svg/hands-on.svg", 
              :desc => {:title => "Hands-on", :subtitle => "Projects and assignment to implement concepts"}}, 
              {:img => "academy/svg/personalised.svg", :desc => {:title => "Personalised", :subtitle => "Topics, peers & pace of learning are 
              optimized for your needs"}}, {:img => "academy/svg/industry-relevant.svg", :desc => {:title => "Industry-relevant", 
              :subtitle => "Industry-tested curriculum to make you job ready"}}]}}, 
              :content => {:title => "<h2><b> Scaler Academy's Curriculum</b> is designed to make you a <span class=\"highlight\"><b>solid engineer</b></span></h2>", 
              :subtitle => "Based on a simple 30 minutes MCQ test, you enter <b>Beginner / Intermediate / Advanced sections</b>. 
              Beginner and Intermediate sections cover some <b>additional basic topics</b> that Advanced students do not need.", 
              :courses => [{:name => "Beginner", :icon => "academy/svg/beginner.svg", :active_icon => "academy/svg/beginner-active.svg", 
              :desc => "I know bare minimum coding / starting from scratch", :duration => "44 weeks course", :enrollment_status => "Coming soon!"}, 
              {:name => "Intermediate", :icon => "academy/svg/intermediate.svg", :active_icon => "academy/svg/intermediate-active.svg", 
              :desc => "I know coding in one programming language. Can build basic applications.", 
              :enrollment_status => "Enrolment open", :duration => "37 weeks course"}, 
              {:name => "Advanced", :icon =>"academy/svg/advanced.svg", :active_icon => "academy/svg/advanced-active.svg", 
              :desc => "I am good at coding. I know basic problem solving, data structures, algorithms. Can build basic to advanced applications.", 
              :enrollment_status => "Enrolment open", :duration => "30 weeks course"}], :pointers => [{:title => "Introduction to Programming", 
              :clock_icon => "academy/svg/clock1.svg", :duration => "7 Weeks", 
              :syllabus => ["Decision trees & control", "Binary number system", "Strings", "Arithmetic operators", "Loops"], 
              :mark => "academy/svg/mark1.svg", :arrow => "academy/svg/arrow1.svg"}, 
              {:title => "Programming Constructs", :clock_icon => "academy/svg/clock2.svg", :duration => "7 Weeks", 
              :syllabus => ["Functions", "Recursion", "Pointers", "Structures", "Structures, Unions & Dynamic Arrays", "Asymptotic notations"], 
              :mark => "academy/svg/mark2.svg", :arrow => "academy/svg/arrow1.svg"}, 
              {:title =>"Problem Solving & CS Fundamentals", :clock_icon => "academy/svg/clock3.svg", :duration => "15 Weeks", 
              :syllabus => ["Time Complexity, Arrays, Strings, Binary Search, 2 Pointers, Recursion, Hashing, Sorting, Bit manipulation", 
              "Stacks, Queues, Linked Lists, Trees, Tries, Heap", "Greedy, DP, Graphs", "DB, OS, and Computer Networks"], 
              :mark => "academy/svg/mark3.svg"}], :special_courses => [{:name =>"Backend Specialisation", 
              :clock_icon => "academy/svg/clock4.svg", :duration => "15 Weeks", 
              :pointers => ["System Design (HLD + LLS) with project", "MVC, REST APIs, ORM, SprintBoot, Views, Database Indexes, Multithreading"]}, 
              {:name =>"Fullstack Specialisation", :clock_icon => "academy/svg/clock5.svg", :duration => "15 Weeks", 
              :pointers => ["System Design (HLD + LLS) with project", "Building a server, into to MVC, web architecture, HTML, CSS, Javascript, Node.js, Backend architecture, MongoDB, React/Redux"], 
              :cta =>"Read More >"}], "advanced_electives"=>{:title =>"<b>Advanced Electives</b> (Optional)", 
              "subtitle"=>"Starting from the March'21 batches, the electives stated below will taught after the entire course is 
              completed. Learners can take up all electives or just a few of them and they are completely optional. 
              We believe these electives can help engineers further accelerate their carrer and hence we advice you to opt for 
              them!", "modal_title"=>"<b>Introducing Advanced Electives</b>", :modal_subtitle => "Introducing 3 elective courses 
              to our curriculum, to help you go above and beyond in your journey to being the best programmer you can be", 
              "new_badge_icon"=>"academy/svg/elective_new_badge.svg", "subjects"=>[{:title =>"Advanced DSA", 
              :clock_icon => "academy/svg/clock6.svg", :icon => "academy/svg/advanced_dsa.svg", :duration => "4 weeks", 
              :syllabus => ["Combinatorics and Probability", "Matrix exponentiation", "Advanced Trees: Segment Tree, k-D Tree", 
              "Advanced Dynamic Programming 1", "Advanced Graphs 1: Bridges, Articulation point", "Advanced Graphs 2: Network Flow", 
              "Miscellaneous company problem discussion"]}, {:title =>"Concurrent Programming", :clock_icon => "academy/svg/clock2.svg", 
              :icon => "academy/svg/concurrent_programming.svg", :duration => "4 weeks", :syllabus => ["Introduction to Concurrency", 
              "Concurrency in Java", "Concurrency in Java 2 + Exercise", "Parallelization 1", "Parallelization 2", "Dependency Injection", 
              "Concurrent Programming 1", "Concurrent Programming 2", "Assignment Discussion"]}, {:title =>"Product Management", 
              :clock_icon => "academy/svg/clock3.svg", :icon => "academy/svg/product_management.svg", :duration => "4 weeks", 
              :syllabus => ["Introduction to Product Management", "Product Vision and Measurement", 
              "Roadmaps and Prioritization", "The Spring Process and Product Leadership", 
              "Product Development I", "Product Development II"]}]}, 
              "notes"=>[{:icon => "course_page/svg/Price.svg", :title =>"Price", 
              :desc =>"No difference in price between the two sections"}, {:icon => "course_page/svg/Eligibilty.svg", 
              :title =>"Eligibility", :desc =>"Any working professional who has graduated on or before 2021"}], 
              :pop_up => {:title =>"At Scaler, we provide a structured, comprehensive, industry vetted curriculum that is designed 
              to take you to the next level in your career by helping you emerge as a skilled and strong engineer. 
              This System Design course is a part of our Scaler Academy program, so we make sure you learn exactly everything that you need to, 
              to solidify your career.", :content => [{:name =>"System Design (HLD + LLD)", :clock_icon => "academy/svg/clock5.svg", 
              :duration => "15 Weeks", :pointers => ["LLD","OOP Constructs","Properties of a Good Software", "SOLID Principles", 
              "Introduction to Design Patterns","Builder Pattern", "Factory Pattern", "Prototype Pattern", 
              "Adapter Pattern", "Decorator Pattern", "Flyweight Pattern", 
              "Observer Pattern", "Strategy Pattern", "UML Diagrams", 
              "How to Approach Design Problems", "Design a Pen", "Design TicTacToe", 
              "Design Snakes and Ladders", "Design Parking Lot", "Design BookMyShow", 
              "Representation of Multiple relationship cardinalities in Schema Design","HLD",
              "System Design Fundamentals","Caching","CAP Theorem","SQL vs NoSQL","Master-Slave architecture",
              "Database sharding and replicas","Microservices and Containerisation","Zookeeper",
              "Kafka","Quadtrees (nearest neighbors)","Design S3","Design Distributed crawler",
              "Design Hotstar","Design Google Search Typeahead","Design Quora","Design Facebook Messanger"]}]}}},
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
              :subtitle => "Total fee: Rs 2.99L inclusive of GST. You can get super 
              affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
              if you choose to withdraw.", :title_content => "With EMI options, your payment can be as low as 9, 811 per month- that's like your monthly grocery bill!", 
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