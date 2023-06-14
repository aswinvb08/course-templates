class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
    def up
     return unless Rails.is_scaler?
     
     Course.find_by(:slug => "machine-learning-course-training")&.destroy
      content = {:metadata => {:jsonld => "true", :next_batch_details => {:course_slug => "ds", :course_type => "intermediate"}, :program => "data-science", :header => {:logo => "scaler/png/scaler-data-science.png", :path => "/data-science-course/"}, 
                    :links => [{:url => "#curriculum", :text => "Curriculum"}, 
                    {:url => "#careers", :text => "Placement"}, {:url => "#mentors", :text => "Mentor"}, 
                    {:url => "#testimonial", :text => "Review"}, 
                    {:url => "#review_questions", :text => "FAQ"}]},
                :banner => {
                    :breadcrumb => [{:cta => "Home", :link => "https://www.scaler.com/"}, 
                       {:cta => "<b>Machine Learning Course Training</b>"}], 
                    :heading => "<h1><b>Machine Learning Course by Scaler</b></h1>", 
                    :content => ["With this Machine learning course, study essential Machine learning topics like Supervised Learning, Unsupervised Learning, Reinforcement Learning, and much more from scratch.", 
                    "Build your portfolio by working on real-world business projects", 
                    "Placement support + Ongoing guidance after course completion + Opportunity to interact with Machine Learning industry experts"], 
                    :background_image => "course_page/banner/bannernew.png", 
                    :footer => "Next Batch Starts  ",
                    :title => "Enroll for Machine Learning & Data Science course to improve your career prospects."},
                :briefing => {:heading => "<h2><b><span class=\"highlight\">Machine Learning</span> Course Overview</b></h2>", 
                    :places => [
                    {:className => "mc", :name => "<h3><b>About Scaler's Machine Learning Program</b></h3>", 
                    :desc => "<li>Master essential skills from Excel to Deep Learning, with a comprehensive curriculum designed to make you a solid ML Engineer</li>
                    <li>Work on real-world projects built in partnership with top companies, with 1:1 guidance from industry mentors.</li>
                    <li>Receive ongoing support and guidance for job search and interview preparation to kickstart your career in Data Science & Machine Learning</li>
                    "}, 
                    {:className => "mc", :name => "<h3><b>What is Machine Learning?</b></h3>", :desc => "Machine Learning is a 
                    fascinating technology that utilizes the power of mathematics, code, and data to automate decision-making processes. 
                    In simple terms, it enables computers to learn from data and make predictions, without being explicitly programmed. 
                    From automated recommendations on e-commerce sites to personalized newsfeeds, Machine Learning is transforming the way we live and work. 
                    "},
                    {:className => "mc", :name => "<h3><b>What skills will I master with this online Machine Learning training?</b></h3>", 
                    :desc => "Skills that you will master with this machine learning Program are:
                    <li>Data analysis and visualization using Python libraries like NumPy, Pandas, Matplotlib, and advanced statistical concepts like probability, Bayes Theorem.</li>  
                    <li>Building a strong foundation in ML and deep learning concepts like linear regression, polynomial regression, clustering, supervised and unsupervised learning, computer vision, and NLP.</li>  
                    <li>Experience working with various data tools like SQL, Tableau, Excel, and Google Spreadsheets, and ML operations tools like Flask, Docker, AWS Sagemaker, and Apache Spark.</li>
                    "}]},
                :partnership => {:heading => "Work on <b><span class=\"highlight\">Machine Learning</span> projects built in 
                    partnership with top companies</b>", :description => "Work on real industry projects, 
                    get real-time feedback from mentors, and interact with your peers to discuss different 
                    solutions during live classes. Here are a few of the sample projects:", 
                    :points => [{:img => "data_science/svg/partner_delivery_icon.svg", :title => "Estimate food arrival time at
                     customer's location."},
                    {:img => "data_science/svg/partner_discount_icon.svg", 
                    :title => "Use data to plan the best strategy for offering  discount coupons."},
                    {:img => "data_science/svg/partner_message_icon.svg", :title => "Detect fraud by analyzing millions of chat messages."}, 
                    {:img => "data_science/svg/partner_connect_icon.svg", :title => "Experiment with different driving routes to reach destination in minimum
                     time interval."}], 
                    :disclaimer => "*Projects may be updated based on student and partner feedback."},
                :people_alt => {:mentor_heading => "<h2>Get 1:1 guidance with our <span class=\"highlight\"><b>top industry mentors</b>
                    </span> from the Machine Learning Industry</h2>", :mentor_subtitle => "We have more than 300 mentors who have already guided thousands of students by taking their
                      mock interviews, providing them detailed feedback and helping them to define their career path. Scaler provides 1:1 mentoring
                       sessions.", 
                    :mentors => [{:image => "data_science/png/mentor_hitesh_hinduja.png", 
                    :name => "Hitesh Hinduja", :mediumName => "linkedin", :mediumUrl => "academy/svg/linkedin.svg", :company => "ola", 
                    :details => ["Senior Manager, Artificial Intelligence, OLA Electric", "Passionate about cutting-edge Research, he is leading a 
                    team of 20 to deliver the best Electric Vehicles, leveraging end-to-end ML pipelines"], :showEx => false, 
                    :linkedin => "https://www.linkedin.com/in/hitesh-hinduja-501820117/"},{:image => "data_science/png/mentor_girijesh_prasad.png", :name => "Girijesh Prasad", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", "companyLogo"=>"data_science/png/morgan_stanley_logo.png", 
                    :details => ["Senior Manager, Data Science, Morgan Stanley", "He has extensive experience in delivering end-to-end Data 
                    Science solutions - from infrastructure to models.", "He can also share his experience about management and business."], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/girijeshcse/"}, {:image => "data_science/png/mentor_sahil_chelaramani.png", :name => "Sahil Chelaramani", :mediumName => "linkedin", 
                    :mediumUrl => "academy/svg/linkedin.svg", :company => "microsoft", :details => ["Data Scientist, Microsoft", "He has worked on 
                    Bing Search and Azure Global Development teams. He has experience in building large Deep Learning projects, 
                    and Data Science solutions."], :showEx => false, :linkedin => "https://www.linkedin.com/in/sahilc/"}, 
                     {:image => "data_science/png/mentor_rajeev_baditha.png", 
                    :name => "Rajeev Baditha", :mediumName => "linkedin", :company => "walmart", :mediumUrl => "academy/svg/linkedin.svg", 
                    :details => ["Data Scientist, Walmart", "He has theoretical as well as hands-on knowledge of Data Science, 
                    and has worked at Walmart and Fractal Analytics", "He has a Masters degree from Indian Statistical Institute"], 
                    :showEx => false, :linkedin => "https://www.linkedin.com/in/rajeev-baditha-12b929ab/"}]},
                :advisors => {:heading => 'Our panel of <b>Industry Advisors</b> at Scaler have helped in creating best-in-class Data Science &
                 Machine Learning Training Program.',
                    :cards => [{image_src: 'data_science_old/png/advisor_pawan_kumar.png',
                    :name => 'Pawan Kumar',
                    :position => 'Head of Data Science, Uber',
                    :logo => 'linkedin'},{image_src: 'data_science_old/png/advisor_bhavik_rasyara.png',
                    :name => 'Bhavik Rasyara',
                    :position => 'Boston Consulting Group',
                    :logo => 'bain'},{image_src: 'data_science_old/png/advisor_yash_mimani.png',
                    :name => 'Yash Mimani',
                    :position => 'McKinsey & Company',
                    :logo => 'mckinsey'}, {:image_src => 'data_science_old/png/advisor_ramit_sawhney.png',
                        :name => 'Ramit Sawhney',
                        :position => 'Tower Research Capital / ShareChat',
                        :logo => 'ubers'},  ]},
            :academy_curriculum =>  {
                :heading => "<b>Curriculum</b> is designed to make you a <span class='highlight'><b>solid Data Scientist</b></span>",
                :hide_module_class => 'hide-modules',
                :sections => [{
                    :heading => "Beginner",
                    :duration => "15 Months"
                }, {
                    :heading => "Intermediate",
                    :duration => "11 Months"
                }, {
                    :heading => "Advanced",
                    :duration => "7 Months"
                }],:modules => [{
                    :label => "Module - 1",
                    :name => "Beginner Module",
                    :duration => "4 Months",
                    :content => {
                    :duration => "4 Months",:module_detail_pointers => [{
                        :name => "Tableau + Excel",
                        :module_detail_pointers_detail => [{
                        :name => "Basic Visual Analytics",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "More Charts and Graphs, Operations on Data and Calculations in Tableau",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Advanced Visual Analytics and Level Of Detail (LOD) Expressions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Geographic Visualizations, Advanced Charts, and Worksheet and Workbook Formatting",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Introduction to Excel and Formulas",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Pivot Tables, Charts and Statistical functions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Google Spreadsheets",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "SQL",
                        :module_detail_pointers_detail => [{
                        :name => "Intro to Databases & BigQuery Setup",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Extracting data using SQL",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Functions, Filtering and Subqueries",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Joins",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "GROUP BY & Aggregation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Window Functions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Date and Time Functions & CTEs",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Indexes and Partitioning",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Beginner Python",
                        :module_detail_pointers_detail => [{
                        :name => "Flowcharts, Data Types, Operators",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Conditional Statements & Loops",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Functions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Strings",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "In-built Data Structures - List, Tuple, Dictionary, Set, Matrix Algebra, Number Systems",
                        :module_detail_pointers_details => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_next => "Read Next: Module 2 - Data Analysis and Visualization"
                    }
                }, {
                    :label => "Module - 2",
                    :name => "Data Analysis and Visualization",
                    :duration => "4 Months",
                    :content => {
                    :duration => "4 Months",:note1 => "Placement assistance for Data Analyst/Product Analyst roles via Mastery based evaluation starts after completion of this module",:module_detail_pointers => [{
                        :name => "Python libraries",
                        :module_detail_pointers_detail => [{
                        :name => "Numpy, Pandas",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Matplotlib",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Seaborn",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Data Acquisition",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Web API",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Web Scraping",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Beautifulsoup",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Tweepy",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Probability and Applied Statistics",
                        :module_detail_pointers_detail => [{
                        :name => "Probability",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Bayes Theorem",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Distributions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Descriptive Statistics, outlier treatment",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Confidence Interval",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Central limit theorem",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Hypothesis test, AB testing",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "ANOVA",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Correlation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "EDA, Feature Engineering, Missing value treatment",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Experiment Design",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Regex, NLTK, OpenCV",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Product Analytics",
                        :module_detail_pointers_detail => [{
                        :name => "Framework to address product sense questions",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Diagnostics",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Metrics, KPI",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Product Design & Development",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Guesstimates",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Product Cases from Netflix, Stripe, Instagram",
                        :module_detail_pointers_details => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_next => "Read Next: Module 3 - Foundations of Machine Learning and Deep Learning"
                    }
                }, {
                    :label => "Module - 3",
                    :name => "Foundations of Machine Learning and Deep Learning",
                    :duration => "3 Months",
                    :content => {
                    :duration => "3 Months",:note1 => "You can move to the advanced track only after you clear the transition test",:module_detail_pointers => [{
                        :name => "Advanced Python",
                        :module_detail_pointers_detail => [{
                        :name => "Python Refresher",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Basics of Time and Space Complexity",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "OOPS",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Functional Programming",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Exception Handling and Modules",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Math for Machine Learning",
                        :module_detail_pointers_detail => [{
                        :name => "Classification",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Hyperplane",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Halfspaces",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Calculus",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Optimization",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Gradient descent",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Principal Component Analysis",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Introduction to Neural Networks and Machine Learning",
                        :module_detail_pointers_detail => [{
                        :name => "Introduction to Classical Machine Learning",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Linear Regression",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Polynomial, Bias-Variance, Regularisation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Cross Validation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Logistic Regression-2",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Perceptron and Softmax Classification",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Introduction to Clustering, k-Means",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "K-means ++, Hierarchical",
                        :module_detail_pointers_details => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_next => "Read Next: Module 4 - Specializations"
                    }
                }, {
                    :label => "Module - 4",
                    :name => "Specializations",
                    :duration => "3 Months",
                    :content => {
                    :duration => "3 Months each",:note1 => "You can pursue the Deep Learning specialisation after completing the Machine Learning specialisation or vice versa",:module_detail_pointers => [{
                        :title => "Machine Learning",
                        :module_detail_pointers_detail => []
                    }, {
                        :name => "Machine Learning 1:Supervised",
                        :module_detail_pointers_detail => [{
                        :name => "MLE, MAP, Confidence Interval",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Classification Metrics",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Imbalanced Data",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Decision Trees",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Bagging",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Naive Bayes",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "SVM",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Machine Learning 2:Unsupervised and Recommender systems",
                        :module_detail_pointers_detail => [{
                        :name => "Intro to Clustering, k-Means",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "K-means ++, Hierarchical",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "GMM",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Anomaly/Outlier/Novelty Detection",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "PCA, t-SNE",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Recommender Systems",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Time Series Analysis ",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :choice => "And/Or",
                        :module_detail_pointers_detail => []
                    }, {
                        :title => "Deep Learning",
                        :module_detail_pointers_detail => []
                    }, {
                        :name => "Neural Networks",
                        :module_detail_pointers_detail => [{
                        :name => "Perceptrons",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Neural Networks",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Hidden Layers",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Tensorflow",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Keras",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Forward and Back Propagation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Multilayer Perceptrons (MLP)",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Callbacks",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Tensorboard",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Optimization",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Hyperparameter tuning",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Computer vision",
                        :module_detail_pointers_detail => [{
                        :name => "Convolutional Neural Nets",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Data Augmentation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Transfer Learning",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "CNN",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "CNN hyperparameters tuning & BackPropagation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "CNN Visualization",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Popular CNN Architecture - Alex, VGG, ResNet, Inception, EfficientNet, MobileNet",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Object Segmentation, Localisation, and Detection",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Generative Models, GANs",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Attention Models",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Siamese Networks",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Advanced CV",
                        :module_detail_pointers_details => []
                        }]
                    }, {
                        :name => "Natural Language Processing",
                        :module_detail_pointers_detail => [{
                        :name => "Text Processing and Representation",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Tokenization, Stemming, Lemmatization",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Vector space modelling, Cosine Similarity, Euclidean Distance",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "POS tagging, Dependency parsing",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Topic Modeling, Language Modeling",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Embeddings",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Recurrent Neural Nets",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Information Extraction",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "LSTM",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Attention",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Named Entity Recognition",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Transformers",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "HuggingFace",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "BERT",
                        :module_detail_pointers_details => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_next => "Read Next: Module 5 - Machine Learning Ops"
                    }
                }, {
                    :label => "Module - 5",
                    :name => "Machine Learning Ops",
                    :duration => "1 Month",
                    :content => {
                    :duration => "1 Month",
                    :accordion_layout => true,
                    :note1 => "After completion of this module Placement assistance for Data Scientist (ML/DS) roles via Mastery based evaluation will start",:module_detail_pointers => [{
                        :name => "Machine Learning Ops",
                        :module_detail_pointers_detail => [{
                        :name => "Streamlit",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Flask",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Containerisation, Docker",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Experiment Tracking",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "MLFlow",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "CI/CD",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "GitHub Actions",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "ML System Design",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "AWS Sagemaker, AWS Data Wrangler, AWS Pipeline",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Apache Spark",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Spark MLlib",
                        :module_detail_pointers_detail => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_next => "Read Next: Module 6 - Advanced Data Structures and Algorithms"
                    }
                }, {
                    :label => "Module - 6",
                    :name => "Advanced Data Structures and Algorithms",
                    :duration => "4 Months",
                    :content => {
                    :duration => "4 Months",
                    :note1 => "<b>The recorded lectures of Advanced Programming will be shared along with Teaching Assistant support (no live sessions)</b>",
                    :accordion_layout => true,
                    :module_detail_pointers => [{
                        :name => "Advanced Data Structures and Algorithms",
                        :module_detail_pointers_detail => [{
                        :name => "Linked Lists",
                        :module_detail_pointers_details => []
                        }, {
                        :name => "Stacks & Queues",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Trees",
                        :module_detail_pointers_detail => []
                        }, {
                        :name => "Tries & Heaps",
                        :module_detail_pointers_detail => []
                        }]
                    }],:project_label => "Module Projects -",:projects => [{
                        :name => "1. Estimating Delivery Time",
                        :company => "zomato"
                    }, {
                        :name => "1. Estimating Delivery Time",
                        :company => "razorpay"
                    }],:read_prev => "Read Prev: Module 1 - Beginner Module"
                    }
                }]
                },
                :mentor => {:heading => "<h2><b><span class=\"highlight\">Our Tutors & </span> Instructors</b> will make you confident about the fundamentals required for Machine Learning
                </h2>", 
                    :description => "Our tutors are experts from top companies who have built scalable systems and understand the real-life importance 
                    of Data Science and Machine Learning.", :instructors => [{:image => "academy/png/anshuman.png", :name => "Anshuman Singh", 
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
                    :desc => "<b>Eligibility:</b> Anyone who graduated in 2022 or before"},
                :career_alt => {:heading => "We also <b><span class=\"highlight\">help you prepare for</span> your job search and your interviews</b>", 
                    :cards => [
                    {:img => "data_science/svg/community.svg", :content => "Exchange job opportunities with our <b>20,000+ Scaler student community</b>."},    
                    {:img => "data_science/svg/employer.svg", :content => "Access job opportunities from more than <b>180 employer partners</b> of Scaler"},  
                    {:img => "data_science/svg/mock.svg", :content => "Get ready for job interviews by<b> practicing mock interviews</b> with <b>industry professionals.</b>"}, 
                    {:img => "data_science/svg/resume.svg", :content => "Keep your resume & LinkedIn profile optimized with guidance of our <b>experts</b>"}]},
                :partners => {:heading => "<h2><span class=\"highlight\">Scaler's <b>alumni</b> work</span> at 
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
                    :subtitle => "Total fee: Rs 3.69L inclusive of GST at super 
                    affordable EMI options. Try the course for the first 2 weeks - full money-back guarantee 
                    if you choose to withdraw.", :title_content => "With EMI options, your payment can be as 
                    low as Rs 8,628 per month - that's like your monthly grocery bill!", 
                    :buttons => [{:id => "tuition_modal_one", :text => "VIEW EMI PLANS", :link => ""}]},
                :questions => {:heading => "<h2><b><span class = 'highlight'>Machine Learning</span> Course FAQs</b></h2>", 
                    :list => [
                    {:question => "Who should take this Machine Learning program?", 
                    :answer => "Anyone who wants to learn machine learning and make a career in it, whether they are beginners or professionals, are welcome to enroll for this
                     Data Science & Machine Learning Course. Software, IT, and marketing professionals can enroll part-time or through external programs in Machine Learning."},
                    {:question => "What does a Machine Learning Engineer do?", 
                    :answer => "Machine learning engineers:
                    <li>Implement machine learning algorithms</li>
                    <li>Design and develop machine learning systems</li>
                    <li>Run experiments and tests on AI systems to maintain and improve them.</li>
                    "},
                    {:question => "What kind of jobs or career opportunities are present in the Machine Learning domain?", 
                    :answer => "In Machine Learning, there are a variety of job roles that can be assigned depending on industry needs. Once you finish  our Machine Learning course,
                     you will possess an in-demand set of skills critical to today's career opportunities, which include: Machine Learning Scientist, Machine Learning Engineer,
                      Human-Centered Machine Learning Designer, Research Analyst, Data Analytics, Analytics Lead/Manager/Consultant, Statistical Programming Specialist, Hadoop Developer,
                       and many more."},
                    {:question => "What kind of salary can I expect as a Machine Learning Professional?", 
                    :answer => "As a fresher in Machine Learning Engineer, you can expect to earn between Rs. 4-8 lakhs per annum. An experienced professional data scientist (3-5 years experience)
                     makes more than Rs. 10 lakhs per annum by virtue of their skills and expertise. Their skill development and learning capabilities largely determine their salary increases. If 
                     you are more adept at learning, you will be more likely to grow."},
                    {:question => "What is the eligibility for Scaler's Machine Learning and Data Science course?", 
                    :answer => "As a subject, Machine Learning is a fusion of concepts from Mathematics, Computer Science, and Statistics. It is essential that students have at least one
                     degree in one of the following fields: science, technology, engineering, or mathematics. Additionally, having studied computer programming in high school can be beneficial.
                    "},
                    {:question => "How can Scaler's Data Science and Machine Learning course assist me in building a successful career in Machine Learning?", 
                    :answer => "A machine learning engineer must possess a wide range of skills and know the tools and techniques involved. Some of the key skills you learn with our machine 
                    learning course  include statistical skills, mathematical skills, programming skills (Python, Java, etc.), Data mining skills, cloud computing skills (like AWS and others),
                     ML skills (K-Nearest Neighbour, random forests, ensemble methods, support vector machines, etc.), database skills (SQL, NoSQL, etc.), etc"},
                    {:question => "What are the fees for the Data Science and Machine Learning course?", 
                    :answer => "The Data Science and Machine learning course fee in Ba is Rs. 3.69L inclusive of GST. EMI options are available. Take the course for two weeks - if you decide to
                     withdraw, you're fully refunded. If you opt for an EMI option, your monthly payment will be as low as Rs. 8,628."},
                    {:question => "Which companies hire Machine Learning Engineers?", 
                    :answer => "Almost all of the big companies like Google, Amazon, Facebook, Netflix have a requirement of good Machine Learning engineers. Machine learning is being applied in almost
                     all the industries where data can be used to make predictions be it healthcare, IT, finance."},
                    {:question => "What are the applications of Machine Learning?", 
                    :answer => "Some of the major applications of machine learning include speech recognition, self-driving cars, product recommendations, stock market trading, online fraud detection,
                     email spam filtering, chatbots and voice assistance."},
                    {:question => "Is the Machine Learning course difficult to learn?", 
                    :answer => "No. We have excellent instructors and mentors with us who will make the course very easy to learn and understand."},
                    {:question => "What is the best coding language to learn Machine Learning?", 
                    :answer => "Python and R are the most used languages in Machine learning."}    
                    ]}}

        CoursePageTemplateService.new(
            title: "Machine Learning Course Training",
            content: content
        ).execute
    end
    
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
    
