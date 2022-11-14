Course.find_by(:slug => "data-science-analytics-course")&.destroy
      content = {:metadata => {:jsonld => "true", :noindex => true, :next_batch_details => {:course_slug => "ds", :course_type => "intermediate"}, :program => "data-science", :header => {:logo => "scaler/png/scaler-data-science.png", :path => "/data-science-course/"}, 
                    :links => [{:url => "#curriculum", :text => "Curriculum"}, 
                    {:url => "#careers", :text => "Placement"}, {:url => "#mentors", :text => "Mentor"}, 
                    {:url => "#testimonial", :text => "Review"}, 
                    {:url => "#review_questions", :text => "FAQ"}], :noindex => "true"},
                :banner => {:heading => "<h1><b>A rigorous and industry-approved Data Science and Analytics Program</b></h1>", 
                    :content => ["Learn in-demand tools like NumPy, Pandas, PowerBi, Tableau, SQL and R- programming",
                    "Build your portfolio by working on real-life business cases", 
                    "Personal placement mentorship + Ongoing guidance after course completion + Opportunity to interact with experts"], 
                    :background_image => "course_page/banner/bannernew.png", 
                    :footer => "The Next Batch Starts",
                    :title => "Speak to a Counsellor"},
                :briefing => {:heading => "<h2>Why <b><span class=\"highlight\">Data Science and Analytics?</span></b></h2>", 
                    :places => [{:className => "mc", :name => "<h3><b>What is Data Science and Analytics?</b></h3>", :desc => "In a nutshell, it involves extracting actionable 
                        insights from raw data. Various scientific methods, algorithms, and processes are used to extract insights from vast amounts of data. 
                        Data Science and Analytics provides a vast array of tools for working with data coming from a variety of different sources, such as financial 
                        logs, multimedia files, marketing forms, sensors, and text files. An important aspect of data science and analytics is the preparation of data for 
                        analysis, including cleaning, aggregating, and manipulating it to perform advanced analyses."}, 
                    {:className => "mc", :name => "<h3><b>What do Data Scientists and Data analysts do?</b></h3>", 
                    :desc => "A Data Scientist and Data Analyst are professionals who practice data science to 
                    analyze data so that they can provide actionable insights by using various processes, methods, 
                    systems, and algorithms. Data Scientists and Data Analysts are highly qualified professionals with well developed 
                    mathematical, statistical, scientific, analytical and technical skills who can prepare, clean, and validate structured 
                    and unstructured data for businesses to use to make better decisions. As a whole, they must fulfil several responsibilities, as follows:
                    <li>Identify data sources and gather data.</li>
                    <li>Analyze structured and unstructured data effectively.</li>
                    <li>Formulate strategies to solve business challenges.</li>
                    <li>Create data strategies in collaboration with team members and leaders.</li>
                    <li>Use algorithms and modules to uncover trends and patterns.</li>
                    <li>Cleaning and verifying the data to ensure it is accurate and uniform</li>"}, 
                    {:className => "mc", :name => "<h3><b>Why should you take up the online Data Science and Analytics training?</b></h3>", 
                    :desc => "Globally, Data Scientists and Data Analysts are the most sought-after, in-demand profession and almost all industries 
                    are actively hiring for them, so obtaining a Data Science and Analytics certification is highly recommended. As India is home to 
                    several tech companies, the Data Science and Analytics field offers vast and promising career opportunities. In this fast-growing field, 
                    we offer a Data Science and Analytics training course designed for beginners and professionals. After you complete this Data science and 
                    analytics course, you will have an in-demand set of skills that are critical to today's career opportunities in:
                    <li>Junior/Senior/Associate Data Scientist and Data Analysts</li>  
                    <li>Forecasting/Risk Analyst</li>
                    <li>Portfolio Risk Data Scientist</li>  
                    <li>Forecasting Analyst, Research Analyst, Data Analytics</li>
                    <li>Analytics Lead/Manager/Consultant</li>
                    <li>Machine Learning Engineer</li>
                    <li>Statistical Programming Specialist</li>"}]},
                :partnership => {:heading => "Work on <b><span class=\"highlight\">projects built in</span> 
                    partnership with top companies</b>", :description => "Work on real industry projects, 
                    get real-time feedback from mentors, and engage with your peers to discuss different 
                    solutions during live classes. Here are a few of the sample projects:", 
                    :points => [{:img => "data_science/svg/partner_discount_icon.svg", 
                    :title => "Use data to design the best strategy for offering coupons and discounts."}, 
                    {:img => "data_science/svg/partner_connect_icon.svg", :title => "Experiment with different driving routes to minimise wait times."},
                    {:img => "data_science/svg/partner_delivery_icon.svg", :title => "Predict when would food arrive at customer's addresses."}, 
                    {:img => "data_science/svg/partner_message_icon.svg", :title => "Sniff out fraud by analyzing millions of chat messages."}], 
                    :disclaimer => "*Projects may be updated based on student and partner feedback."},
                :people_alt => {:mentor_heading => "<h2>Get 1:1 guidance with our <span class=\"highlight\"><b>top industry mentors</b>
                    </span></h2>", :mentor_subtitle => "Our 300+ mentors have helped thousands of students by defining their career paths, 
                    conducting mock interviews, and giving detailed feedback. Get paired with a mentor and schedule a 
                    personalized 1:1 mentoring session twice a month.", 
                    :mentors => [{:image => "data_science/png/mentor_sahil_chelaramani.png", :name => "Sahil Chelaramani", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :company => "microsoft", :details => ["Data Scientist, Microsoft", "He has worked on 
                    Bing Search and Azure Global Development teams. He has experience in building large Deep Learning projects, 
                    and Data Science solutions."], :showEx => false, :linkedin => "https://www.linkedin.com/in/sahilc/"}, 
                    {:image => "data_science/png/mentor_girijesh_prasad.png", :name => "Girijesh Prasad", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", "companyLogo"=>"data_science/png/morgan_stanley_logo.png", 
                    :details => ["Senior Manager, Data Science, Morgan Stanley", "He has extensive experience in delivering end-to-end Data 
                    Science solutions - from infrastructure to models.", "He can also share his experience about management and business."], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/girijeshcse/"}, {:image => "data_science/png/mentor_rajeev_baditha.png", 
                    :name => "Rajeev Baditha", :mediumName => "linkedin", :company => "walmart", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Data Scientist, Walmart", "He has theoretical as well as hands-on knowledge of Data Science, 
                    and has worked at Walmart and Fractal Analytics", "He has a Masters degree from Indian Statistical Institute"], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/rajeev-baditha-12b929ab/"}, {:image => "data_science/png/mentor_hitesh_hinduja.png", 
                    :name => "Hitesh Hinduja", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :company => "ola", 
                    :details => ["Senior Manager, Artificial Intelligence, OLA Electric", "Passionate about cutting-edge Research, he is leading a 
                    team of 20 to deliver the best Electric Vehicles, leveraging end-to-end ML pipelines"], :showEx => false, 
                    :linkedin => "https://www.linkedin.com/in/hitesh-hinduja-501820117/"}]},
                :advisors => {:heading => 'Our panel of <b>Industry Advisors</b> has helped in creating best-in-class program.',
                    :cards => [{:image_src => 'data_science_old/png/advisor_ramit_sawhney.png',
                        :name => 'Ramit Sawhney',
                        :position => 'Tower Research Capital / ShareChat',
                        :logo => 'ubers'}, {image_src: 'data_science_old/png/advisor_pawan_kumar.png',
                            :name => 'Pawan Kumar',
                            :position => 'Head of Data Science, Uber',
                            :logo => 'linkedin'}, {image_src: 'data_science_old/png/advisor_yash_mimani.png',
                                :name => 'Yash Mimani',
                                :position => 'McKinsey & Company',
                                :logo => 'mckinsey'}, {image_src: 'data_science_old/png/advisor_bhavik_rasyara.png',
                                    :name => 'Bhavik Rasyara',
                                    :position => 'Boston Consulting Group',
                                    :logo => 'bain'},]},
                :curriculum_alt => {:content => {:title => "Our curriculum will prepare you to <b><span class=\"highlight\">tackle the toughest</span> 
                    problems in Data Science and Analytics</b>", :subtitle => "Based on a simple 30 minutes MCQ test, you enter Beginner / Intermediate / Advanced sections. 
                    Beginner and Intermediate sections cover some additional basic topics that Advanced students do not need.", 
                    :download_btn => "DOWNLOAD DETAILED CURRICULUM", :link => "https://content.interviewbit.com/Scaler-Data-Science-Machine-Learning-Brochure.pdf", 
                    :courses => [{:name => "Beginner", :icon => "academy/svg/beginner.svg", :active_icon => "academy/svg/beginner-active.svg", 
                    :desc => "I don't know coding. Starting from scratch", :enrollment_status => "Enrolment open", 
                    :duration => "12 months Course"}, {:name => "Intermediate", :icon => "academy/svg/intermediate.svg", 
                    :active_icon => "academy/svg/intermediate-active.svg", :desc => "I know coding in one programming language. Can build basic applications.", :enrollment_status => "Enrolment open", :duration => "11 months Course"}, 
                    {:name => "Advanced", :icon => "academy/svg/advanced.svg", :active_icon => "academy/svg/advanced-active.svg", 
                    :desc => "I am good at coding. I know basic problem solving, data structures, algorithms. Can build basic to advanced applications.", :enrollment_status => "Enrolment open", :duration => "10 months Course"}], 
                    :basic_pointers => [{:title => "Beginner Programming", :clock_icon => "data_science/svg/clock1.svg", 
                    :duration => "4 Weeks", :syllabus => ["Flowcharts, Data Types, Operators", "Conditional Statements & Loops", "Functions & Recursion", "Strings", "In-built Data Structures - List, Tuple, Dictionary, Set"], 
                    :mark => "academy/svg/mark1.svg", :arrow => "academy/svg/arrow1.svg"}, {:title => "Intermediate Programming", :clock_icon => "data_science/svg/clock2.svg", 
                    :duration => "4 Weeks", :syllabus => ["<b>Advance Topics</b>- Lambda Functions, List Comprehension, Functional Programming, Decorator, Args, Kwargs", "<b>OOP</b>- Inheritance, Polymorphism, Overriding", 
                        "<b>Exception Handling, Modules</b>- Package, Library, Built-in Modules in Python", 
                    "<b>Basic DSA & Problem Solving</b>- Time complexity, List, 2D List, Bit Manipulation, Strings, Searching, Sorting"], 
                    :mark => "academy/svg/mark2.svg", :arrow => "academy/svg/arrow1.svg"}, 
                    {:title => "Data Science Core", :clock_icon => "data_science/svg/clock1.svg", 
                    :duration => "14 Weeks", :syllabus => ["<b>Python for Data Science</b>- Numpy, Pandas, Matplotlib and Seaborn",
                      "<b>Probability and Statistics</b>- Probability Theory and Descriptive Statistics",
                    "<b>Math</b>- Coordinate Geometry, Linear Algebra, Linear Programming, Estimation Problems",
                    "<b>Data Acquisition & Unstructured Data</b>- Databases and SQL, Unstructured Data",
                    "<b>Applied Data Science</b>- Hypothesis Testing, EDA, Covariance"
                     ], :mark => "academy/svg/mark3.svg"}], 
                    :pointers => [{:title => "Data Science and Analytics", :clock_icon => "data_science/svg/clock2.svg", 
                    :duration => "14 Weeks", :syllabus => ["<b>Tools</b> - Advanced Tableau, Power Bi. Excel, Advanced SQL, R-programming", "<b>Machine Learning</b>- Supervised Machine Learning, 
                        Unsupervised Machine Learning, Miscellaneous Machine Learning Topics, NLP Concepts, Time Series Forecasting", "<b>Business Awareness</b>- Design of Survey, 
                        Metric Design, Big Data Frameworks, Business Case studies"], :mark => "academy/svg/mark1.svg", 
                    :arrow => "academy/svg/arrow1.svg"},{:title => "Programming - Advanced", 
                    :clock_icon => "data_science/svg/clock3.svg", :duration => "12 Weeks", :syllabus => ["Time Complexity, Arrays, Strings, Binary Search, 
                    2 Pointers, Recursion, Hashing, Sorting, Bit manipulation", "Stacks, Queues, Linked Lists, Trees, Tries, Heap", "Greedy, DP, Graphs", 
                    "DB and System Design"], :mark => "academy/svg/mark3.svg"}], "special_courses"=>[{:name => "Backend Specialisation", 
                    :clock_icon => "academy/svg/clock4.svg", :duration => "15 Weeks", "pointers"=>["System Design (HLD + LLD) with project", 
                    "MVC, REST APIs, ORM, SpringBoot, Views, Database Indexes, Multithreading"]}, {:name => "Fullstack Specialisation", 
                    :clock_icon => "academy/svg/clock5.svg", :duration => "15 Weeks", "pointers"=>["System Design (HLD + LLD) with project", 
                    "Building a server, intro to MVC, web architecture, HTML, CSS, Javascript, Node.js, Backend architecture, MongoDB, React / Redux"]}], 
                    :advanced_electives => {:title => "<b>Advanced Electives</b> (Optional)", :subtitle => "Starting from the March'21 batches, 
                    the electives stated below will taught after the entire course is completed. Learners can take up all electives or just a few of 
                    them and they are completely optional. We believe these electives can help engineers further accelerate their carrer and hence we 
                    advice you to opt for them!", :modal_title => "<b>Introducing Advanced Electives</b>", :modal_subtitle => "Introducing 3 
                    elective courses to our curriculum, to help you go above and beyond in your journey to being the best programmer you can be", 
                    :new_badge_icon => "academy/svg/elective_new_badge.svg", :subjects => [{:title => "Advanced DSA",
                    :clock_icon => "academy/svg/clock6.svg", :icon => "academy/svg/advanced_dsa.svg", :duration => "4 weeks", 
                    :syllabus => ["Combinatorics and Probability", "Matrix exponentiation", "Advanced Trees: Segment Tree, k-D Tree", "Advanced Dynamic Programming 1", 
                    "Advanced Graphs 1: Bridges, Articulation point", "Advanced Graphs 2: Network Flow", "Miscellaneous company problem discussion"]}, 
                    {:title => "Concurrent Programming", :clock_icon => "academy/svg/clock2.svg", :icon => "academy/svg/concurrent_programming.svg", 
                    :duration => "4 weeks", :syllabus => ["Introduction to Concurrency", "Concurrency in Java", "Concurrency in Java 2 + Exercise", "Parallelization 1", "Parallelization 2", 
                    "Concurrent Programming 1", "Concurrent Programming 2", "Assignment Discussion"]}, 
                    {:title => "Product Management", :clock_icon => "academy/svg/clock3.svg", :icon => "academy/svg/product_management.svg", :duration => "4 weeks", 
                    :syllabus => ["Introduction to Product Management", "Product Vision and Measurement", "Roadmaps and Prioritization", 
                    "The Spring Process and Product Leadership", "Product Development 1", "Product Development 2"]}]}, 
                    "notes"=>[{:icon => "", :title => "Price", :desc => "No difference in price between the two sections"}, 
                    {:icon => "", :title => "Eligibility", :desc => "Any working professional who has graduated on or before 2020"}]}},
                :mentor => {:heading => "<h2><b><span class=\"highlight\">Our teaching army</span></b> will make you confident about your fundamentals</h2>", 
                    :description => "Our tutors are experts from top companies who have built scalable systems and understand the real-life importance 
                    of Data Science and Analytics.", :instructors => [{:image => "academy/png/anshuman.png", :name => "Anshuman Singh", 
                    :company => "facebook", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Co-founder of 
                    Scaler Academy and two-time ACM ICPC world finalist.", "Was one of the founding team members of Facebook Messenger 
                    and worked directly with Mark Zuckerberg on product development.", "Responsible for setting up Facebook's 
                    London office, the first Facebook Engineering office outside of the USA"], :showEx => true, 
                    :linkedin => "https://www.linkedin.com/in/anshumansingh26/"}, {:image => "academy/png/mudit.png", 
                    :name => "Mudit Goel", "companyLogo"=>"data_science/png/linkedin_logo.png", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-LinkedIn, Intuit", "Mudit worked on large-scale data 
                    systems at LinkedIn and Intuit, and was granted patents by the US Government", "He led Data Science 
                    team at D2L (ranked among most innovative companies in Data Science)", "Mudit co-founded Coding Elements, 
                    which was selected by the Govt. of India to teach coding to 2 Million students across the nation", 
                    "Mudit currently leads the Data Science and ML program at Scaler"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/muditgoel01/"}, {:image => "academy/png/anant.png", 
                    :name => "Anant Mittal", "companyLogo"=>"data_science/png/university_of_maryland.png", 
                    :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => [" IIIT-H, IIITD, University of Maryland", 
                    "Lead Instructor at Scaler", "A self-motivated professional with proven skills in designing and developing 
                    data-driven and action oriented AI based solutions in Computer Vision and other varied business applications."], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/anantmittal6/"}, 
                    {:image => "academy/png/pragy.png", :name => "Pragy Agarwal", :company => "media", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Media.net", "As a Platform Engineer at Media.net, 
                    scaled low latency systems with millions of queries per second", "16+ years of coding experience across 
                    a variety of programming languages & paradigms. Has a keen eye for good coding practices."], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/agarwalpragy/"}, 
                    {:image => "academy/png/mohit.png", :name => "Mohit Yadav", :company => "hotstar", 
                    :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :details => ["Built the infra to ingest 
                    data at 1 Tb/s at Nutanix", "Built the backend system for Hotstar that now handles 28M concurrent visitors and streams the IPL"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/mohit-yadav-33828230/"}, {:image => "academy/png/kshitij.png", 
                    :name => "Kshitij Mishra", :company => "snapdeal", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Snapdeal", "As part of a 2 member SDE team at Snapdeal, managed the entire codebase of 
                    Snapdeal Seller Search services, helped Snapdeal move from highest available AWS model to the lowest within 
                    4 months"], :showEx => true, :linkedin => "https://www.linkedin.com/in/kshitij-mishra-a5779334/"}, 
                    {:image => "academy/png/abhimanyu.png", :name => "Abhimanyu Saxena", :company => "fab", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Fab.com", "As employee #4 at Fab.com (NYC based 
                    ecommerce startup), scaled the company to unicorn status and architected the entire front-end, building a 300+ engineering team"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/abhimanyusaxena/"}, {:image => "academy/png/tushar.png", 
                    :name => "Tushar Bisht", :company => "facebook", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Facebook", "As a Software engineer at Facebook US, co-created & scaled the 'Nearby Friends' features to 10M DAU", 
                    "Co-founded TownRush and successfully exited to Grofers in 2015 via acquisition"], :showEx => true, 
                    :linkedin => "https://www.linkedin.com/in/bisht-tushar/"}, {:image => "academy/png/siddharth.png", 
                    :name => "Siddharth Taneja", :company => "media", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Sapient, Directi", "Now front-end lead at IB & Scaler, he understands both service and product-based 
                    company environments", "Has developed the entire full-stack curriculum at Scaler and leads all full-stack engineering classes", 
                    "2000+ students have rated him on average 4.5 out of 5"], :showEx => true, 
                    :linkedin => "https://www.linkedin.com/in/siddharth-taneja-98596588/"}, {:image => "academy/png/utkarsh.png", 
                    :name => "Utkarsh Gupta", :company => "google", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Ex-Google, Germany", "One of the highest rated coders from India - 2300 rating (6 stars) on Codechef and 
                    2140 rating ('Master') on Codeforces ", "Ranked #1 in India in Google HashCode 2019", "Only 1 of 9 programmers globally 
                    to have cleared the Expert Level of Codechef's 'Certified Data Structures and Algorithms Programme' (CCDSAP)", 
                    "Worked in the 'Privacy and Data Protection Office' as a Software Engineer in Google Munich, Germany"], 
                    :showEx => true, :linkedin => "https://www.linkedin.com/in/utkarsh-gupta-065626140/"}, {:image => "academy/png/sundeep.png", 
                    :name => "Sundeep Babbur", :company => "", "companyLogo"=>"academy/svg/urban.svg", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :details => ["Ex-Urban Piper", "Intial member of Urban Piper who built a 
                    scalable product to support multiple number of clients.", "Now tech lead of multiple products at Scaler Academy", 
                    "Active contributor in open source projects"], :showEx => true, :linkedin => "https://www.linkedin.com/in/sundeep-babbur/"}, 
                    {:image => "academy/png/sahil.png", :name => "Sahil Bansal", :company => "scaler", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :details => ["Qualified for ACM ICPC Amritapuri onsite-regionals 3 times in a row", 
                    "Started the coding culture at IIT Jammu, conducted workshops, mentored junior students and assisted as a TA 
                    in programming courses", "As an open source contributor, contributed to Github repositories with more than 300 stars"], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/sahilbansal17"}]},
                :join_alt => {:heading => "Connect with an <b>Academic Counsellor</b>", :subheading => "Get all the information about scholarships and low cost EMI options", 
                    :desc => "<b>Eligibility:</b> Anyone who graduated in 2021 or before"},
                :career_alt => {:heading => "We also <b><span class=\"highlight\">help you prepare for</span> your job search and your interviews</b>", 
                    :cards => [{:img => "data_science/svg/employer.svg", :content => "Access job opportunities from our <b>180+ employer partners</b>"}, 
                    {:img => "data_science/svg/community.svg", :content => "Exchange job opportunities with our <b>20K+ Scaler student community</b>'"}, 
                    {:img => "data_science/svg/mock.svg", :content => "<b>Practice mock interviews</b> with <b>people working in the industry</b>"}, 
                    {:img => "data_science/svg/resume.svg", :content => "Optimize your resume & LinkedIn profile with our <b>experienced experts</b>"}]},
                :partners => {:heading => "<h2><span class=\"highlight\">Scaler <b>alumni</b> work</span> at 
                    reputed <b>tech organizations</b> and <b>promising startups</b></h2>", 
                    :companies => ["google", "amazon", "microsoft", "adobe", "mindtickle", "flipkart", "goldman", "walmart", 
                    "myntra", "ola", "media", "olx", "nutanix", "atlassian", "paytm", "gojek", "paypal", 
                    "cleartax", "capillary", "oneplus", "uber", "wakefit", "toppr", "snapdeal", "nvidia", 
                    "intuit", "salesken", "zeta", "tekion", "samsung", "lucideus", "ajio", "needl", "Bangalorevery","dgraph"]},
                :testimonials => {:heading => "<h2>Hear from our <span class=\"highlight\">scaler students</span> and make an informed decision!</h2>", 
                    :sub_title => "", :content => [{:id => "testimonial_modal_A1", :personImage => "data_science/png/Kushal.png", 
                    :name => "Kushal V Mahajan", :title => "SSE", :companyName => "tekion", :mediumName => "linkedin", 
                    "mediumUrl"=>"academy/svg/scaler-logo.svg", "desc"=>"I am superpysched to be a part of Tekion Corp as 
                    Senior Software Engineer. The best of interview process I have ever experienced.<br>Thanks to the entire team of Scaler 
                    to help upgrade my skillsets which certainly made it less daunting. Anshuman Singh Abhimanyu Saxena. Hope 
                    to take it to even greater heights!", :cta => "Read more on", :link => "https://www.linkedin.com/in/kushalvmahajan/", 
                    :linkedin => "https://www.linkedin.com/in/kushalvmahajan/"}, {:id => "testimonial_modal_A2", 
                    :personImage => "academy/testimonial_images/suryanshu.jpg", :name => "Suryanshu Gupta", :title => "Software Developer", 
                    :companyName => "media", :mediumName => "linkedin", "mediumUrl"=>"academy/svg/scaler-logo.svg", 
                    "desc"=>"The way they taught was the aspect that stood out most to me. Each student was invited to give solutions, 
                    and every answer was dissected. No doubt was small enough, and every approach was thought about.", :cta => "Read more on", 
                    :link => "https://www.linkedin.com/in/suryanshu-gupta-065925172/", :linkedin => "https://www.linkedin.com/in/suryanshu-gupta-065925172/"}, 
                    {:id => "testimonial_modal_A3", :personImage => "data_science/png/Mohini.png", :name => "Mohini Bansal", :title => "SDE", 
                    :companyName => "walmart", :mediumName => "linkedin", "mediumUrl"=>"academy/svg/scaler-logo.svg", 
                    "desc"=>"Thanks to scaler lectures, mentor sessions, and my Mentor Drishti Agarwal, who not only helped me 
                    in tackling technical questions but also constantly gave me behavioural and communication tips.<br>And the 
                    most important part, the mock interviews with my mentor, made me more confident day by day.", :cta => "Read more on", 
                    :link => "https://www.linkedin.com/in/mohbansa/", :linkedin => "https://www.linkedin.com/in/mohbansa/"}], :content2 => []},
                :tuition_fee_data_science => {:heading => "<b>Tuition Fee</b>", :title_img => "academy/svg/money-logo.svg", 
                    :subtitle => "Total fee: Rs 2.99L inclusive of GST at super 
                    affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
                    if you choose to withdraw.", :title_content => "With EMI options, your payment can be as 
                    low as Rs 9,811 per month - that's like your monthly grocery bill!", 
                    :buttons => [{:id => "tuition_modal_one", :text => "VIEW EMI PLANS", :link => ""}]}} 
  
      CoursePageTemplateService.new(
        title: "Data Science Analytics Course",
        content: content
      ).execute