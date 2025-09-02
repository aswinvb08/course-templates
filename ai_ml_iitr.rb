class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
    def up
      return unless Rails.is_scaler?
  
      #this is for full stack course v0 version.,
      #for v1 we will create a service and course page templates with some placeholder.
      Course.find_by(:slug => "artificial-intelligence-machine-learning-program")&.destroy
      content = {:metadata => {:jsonld => "true", :program => "ai_ml", :header => nil, :links => [{:url => "#highlights", :text => "Highlights"}, 
                {:url => "#alumni", :text => "Alumni"}, {:url => "#mentors", :text => "Instructors"}, {:url => "#faqs", :text => "FAQs"}], :next_batch_details => {:course_slug => "wp", :course_type => "intake"}
                },
                :header => {:logo => "scaler/png/scaler-ai-ml-2.png", :path => "/ai-machine-learning-course/", :logo_alt => "Scaler AI Machine Learning Course"}
            }
      content.merge!(:banner => {
        :tagName => 'For Working Professionals',
        :title => "Join India’s Only Practical AI & ML Course",
        :subtitle => "Co Certified by Scaler and IIT Roorkee",
        :form_header => "Apply now to start upskilling",
        :form_subtitle => "Speak to a counsellor today",
        :submit_btn_step1_text => "Apply Now"
      })
      content.merge!(:info => {:items => [
        {:title => 'Community', :description => 'Join 37,000+ developers in our community', :icon => 'iit_roorkee/info/community.svg'},
        {:title => 'Placements', :description => 'Connect with 1500+ placement partners', :icon => 'iit_roorkee/info/placements.svg'},
        {:title => 'Experience', :description => 'Gain hands-on experience with live projects', :icon => 'iit_roorkee/info/experience.svg'},
        {:title => 'Immersion', :description => 'Campus immersion program with IIT Roorkee', :icon => 'iit_roorkee/info/immersion.svg'}
      ]})
      content.merge!(:glance => {
        :title => 'Scaler Academy Program at a Glance', :items => [
        {:title => '50+ case studies', :description => 'sourced directly from companies like Zomato, Netflix, Uber'},
        {:title => 'AI Toolkit', :description => 'Learn tools like HuggingFace, LangChain, Llamaindex, PyTorch and more'},
        {:title => 'Practice', :description => 'AI-powered mock interviews for skill assessment'},
        {:title => 'Learn', :description => 'Live classes by top industry instructors and IIT Roorkee professors'}
      ]
      })
      content.merge!(:benefits => {:title => 'Why Full Stack Development? Why Now?',:items => [
        {:title => 'Skills in demand', :description => ' Roles like AI/ML Engineer, MLOps Engineer, and NLP Specialist are among the fastest-growing in tech', :icon => 'iit_roorkee/benefits/code.svg'},
        {:title => 'The right time to upskill', :description => 'Rapid adoption means those who learn now will lead the innovation tomorrow.', :icon => 'iit_roorkee/benefits/briefcase-metal.svg'},
        {:title => 'Credibility that counts', :description => 'Earn a prestigious CEC, IIT Roorkee certification to stand out in the AI & ML talent pool.', :icon => 'iit_roorkee/benefits/intution.svg'}
      ]})
      content.merge!(:alumni => {:title => 'Your Success, Our Mission', :subtitle => 'Shaping Success Stories Since 2019', :items => [
        {
          :email => "bmohini94@gmail.com",
          :name => "Mohini Bansal",
          :linkedin => "https://www.linkedin.com/in/mohbansa/",
          :preAcademyCompany => "Khoros",
          :postAcademyCompany => "Walmart Labs",
          :postAcademyRole => "Software Engineer 3",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/MohiniBansal.webp",
          :metrics => "171%",
          :postCompanyLogo => "iit_roorkee/company/walmart.webp"
        },
        {
          :email => "mishraayush6@gmail.com",
          :name => "Ayush Mishra",
          :linkedin => "https://www.linkedin.com/in/ayush-mishra5",
          :preAcademyCompany => "Samsung",
          :postAcademyCompany => "Microsoft",
          :postAcademyRole => "SDE 2",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/Ayush.webp",
          :metrics => "424%",
          :postCompanyLogo => "iit_roorkee/company/microsoft.webp"
        },
        {
          :email => "shrirambhatta@gmail.com",
          :name => "Shriram Bhat",
          :linkedin => "https://www.linkedin.com/in/shriram-bhat-berolli/",
          :preAcademyCompany => "HCL",
          :postAcademyCompany => "Paypal",
          :postAcademyRole => "Software Engineer 3",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/ShriramBhat.webp",
          :metrics => "171%",
          :postCompanyLogo => "iit_roorkee/company/paypal.webp"
        },
        {
          :email => "sudhanshugera@gmail.com",
          :name => "Sudhanshu Gera",
          :linkedin => "https://www.linkedin.com/in/sudhanshu-gera-b2ab84116/",
          :preAcademyCompany => "Wipro Limited",
          :postAcademyCompany => "Walmart",
          :postAcademyRole => "Software Engineer 3",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/Sudhanshu.webp",
          :metrics => "300%",
          :postCompanyLogo => "iit_roorkee/company/walmart.webp"
        },
        {
          :email => "aswinwin94@gmail.com",
          :name => "Aswin",
          :linkedin => "https://www.linkedin.com/in/aswinwin94/",
          :preAcademyCompany => "Pfizer Pvt Ltd",
          :postAcademyCompany => "Microsoft",
          :postAcademyRole => "SDE 2",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/AswinRavi.webp",
          :metrics => "200%",
          :postCompanyLogo => "iit_roorkee/company/microsoft.webp"
        },
        {
          :email => "abinaybingumalla@gmail.com",
          :name => "Abinay Bingumalla",
          :linkedin => "https://www.linkedin.com/in/abinayb/",
          :preAcademyCompany => "Reliance Infocomm Ltd",
          :postAcademyCompany => "Microsoft",
          :postAcademyRole => "Full Stack",
          :program => "Academy",
          :qnaEnabled => "Yes",
          :imageUrl => "iit_roorkee/profiles/Abinay.webp",
          :metrics => "112%",
          :postCompanyLogo => "iit_roorkee/company/microsoft.webp"
        }
      ]})
      content.merge!(:mentors => {:title => 'Learn from Industry Experts',:items => [
        {:name => 'Anshuman Singh', :image => 'iit_roorkee/mentors/anshuman_singh.svg', :company => 'iit_roorkee/company/meta.webp'},
        {:name => 'Naman Bhalla', :image => 'iit_roorkee/mentors/naman_bhalla.svg', :company => 'iit_roorkee/company/google.webp'},
        {:name => 'Deepak Kasera', :image => 'iit_roorkee/mentors/deepak_kasera.svg', :company => 'iit_roorkee/company/amazon.webp'},
        {:name => 'Pravendra Singh', :image => 'https://d2beiqkhq929f0.cloudfront.net/public_assets/assets/000/143/784/original/iit-professor.png?1755181934', :designation => 'Professor at CS Dept.', :institution => 'iit_roorkee/iit-roorkee-white.svg'},
        {:name => 'Kshitij Mishra', :image => 'iit_roorkee/mentors/kshitij_mishra.svg', :company => 'iit_roorkee/company/snapdeal.webp'},
        {:name => 'Shivank Agrawal', :image => 'iit_roorkee/mentors/shivank_agrawal.svg', :company => 'iit_roorkee/company/microsoft.webp'}
      ]})
      content.merge!(:faqs => {:title => 'Frequently Asked Questions',:items => [
        {:question => "<b>Who should take this AI & Machine Learning program?</b>", 
        :answer => "This AI & Machine Learning program is designed for anyone eager to dive into the world of AI and Machine Learning. The program offers foundational modules and advanced concepts to help you excel."},
        {:question => 'Would it be possible to defer the start of my IIT-R course until I complete my regular course ?', :answer => "We have a confirmed date for the upcoming batch at IIT-R. This is a course with limited seats and may not be available throughout the year. Hence, we urge learners who wish to enrol for IIT-R to apply a 2-month pause on their regular Scaler course to complete the IIT-R program first and then resume the regular course with full focus."},
        {:question => 'Are the instructors for IIT-R program from IIT Roorkee?' , :answer => 'Yes, the sessions are conducted by faculty from IIT Roorkee, along with Scaler Instructors.'},
        {:question => "Is prior experience in AI/ML required for the IIT-R program?" , :answer => "No, prior experience in AI/ML is not required. The program is designed for both freshers and working professionals. A basic understanding of Python is helpful but not mandatory."},
        {:question => "What is the IIT-R Campus Immersion? Is it paid ?" , :answer => "Campus Immersion is an optional 2-day visit to the IIT Roorkee campus. It includes workshops, networking, and access to IIT-R facilities. Yes, it is paid separately."},
        {:question => "What is the total duration of this AI & Machine Learning program?", :answer => "The program is designed to cover all critical concepts without compromising on depth. On average, the duration spans around 12 months, offering a mix of live classes, projects, and hands-on experience to build expertise in AIML."},
        {:question => "What skills will you learn in the AIML certification course?", :answer => "In Scaler's AIML certification course, you'll acquire a wide range of skills, including:
          <li>Skills in Python, TensorFlow, and PyTorch</li>
          <li>Machine learning and artificial intelligence fundamentals.</li>
          <li>Deep learning concepts like neural networks, computer vision, and natural language processing.</li>
          <li>Specializations in reinforcement learning, advanced AI algorithms, and generative AI.</li>
          <li>Advanced knowledge of MLOps, algorithm optimization, and deployment strategies.</li>"
        },
        {:question => "Why Choose Scaler for AI & Machine Learning?", :answer => "
          <li>1:1 Mentorship from leading AI & Machine Learning professionals.</li>
          <li>A curriculum that evolves with the rapidly growing AI & Machine Learning domain.</li>
          <li>Learn essential tools and languages like TensorFlow, PyTorch, Hugging Face, and many more</li>
          <li>Specializations in reinforcement learning, advanced AI algorithms, and generative AI.</li>
          <li>Access to placement support to kickstart your career in AI & Machine Learning</li>"
        },
        {:question => "Is the AIML course self-paced or instructor-led?", :answer => "Scaler's AIML program is instructor-led to provide continuous guidance and support throughout the learning journey."},
        {:question => "Does the AIML course offer job placement assistance or career support?", :answer => "
          Yes, Scaler provides extensive career support, including:
          <li>Resume building and interview preparation.</li>
          <li>Personalized mentorship from industry experts.</li>
          <li>Access to over 900+ hiring partners.</li>"
        }
      ]})
      content.merge!(:footer => {:title => 'Master the art of building intelligent systems with AI & ML, backed by a prestigious IIT Roorkee certification.', :subtitle => 'Take the first step towards becoming a part of the Top 1% in Tech.', :cta_text => 'Download Brochure'})
      content.merge!(:iit_roorkee => {:title => 'Learners will also get a unique opportunity to spend 2 days at the IIT Roorkee campus for lectures and activities. These sessions will be held over and above the 60 sessions that are part of the program.', :benefits => [
        '12 hours of hands-on learning',
        'IIT-R resources & facilities at your disposal',
        'Access to research labs with cutting-edge tech',
        'Fireside chat with industry experts',
        'Food & accommodation included',
        'On-campus networking opportunities'
      ]})



      CoursePageTemplateService.new(
        title: "Artificial Intelligence Machine Learning Program",
        content: content
      ).execute
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end