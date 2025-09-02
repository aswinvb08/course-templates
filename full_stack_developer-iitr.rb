class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
    def up
      return unless Rails.is_scaler?
  
      #this is for full stack course v0 version.,
      #for v1 we will create a service and course page templates with some placeholder.
      Course.find_by(:slug => "full-stack-developer-program")&.destroy
      content = {:metadata => {:jsonld => "true", :program => "academy", :header => nil, :links => [{:url => "#highlights", :text => "Highlights"}, 
                {:url => "#alumni", :text => "Alumni"}, {:url => "#mentors", :text => "Instructors"}, {:url => "#faqs", :text => "FAQs"}], :next_batch_details => {:course_slug => "wp", :course_type => "intake"}}}
      content.merge!(:banner => {
        :tagName => 'For Working Professionals',
        :title => 'Master Full Stack Development with Industry-Ready Skills with Scaler Academy Course',
        :subtitle => 'With an optional Advanced AI Engineering program from CEC, IIT Roorkee',
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
        {:title => 'Learn', :description => 'Live classes by top industry instructors'},
        {:title => 'Practice', :description => 'AI-powered mock interviews for skill assessment'},
        {:title => 'Secure', :description => 'End-to-end assistance to land your dream job'},
        {:title => 'Grow', :description => 'One-on-one mentorship from experienced industry veterans'}
      ]
      })
      content.merge!(:benefits => {:title => 'Why Full Stack Development? Why Now?',:items => [
        {:title => 'Full Stack', :description => 'Upskill in DSA and System Design with our end to end full stack developer course.', :icon => 'iit_roorkee/benefits/code.svg'},
        {:title => 'Project Ready', :description => 'Build real-world projects by mastering React, MERN, and JavaScript tools.', :icon => 'iit_roorkee/benefits/briefcase-metal.svg'},
        {:title => 'Strong Foundation', :description => 'Learn essential full stack development concepts from scratch with experts.', :icon => 'iit_roorkee/benefits/intution.svg'}
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
          :metrics => "171",
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
          :metrics => "424",
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
          :metrics => "171",
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
          :metrics => "300",
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
          :metrics => "200",
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
          :metrics => "112",
          :postCompanyLogo => "iit_roorkee/company/microsoft.webp"
        }
      ]})
      content.merge!(:mentors => {:title => 'Learn from Industry Experts',:items => [
        {:name => 'Anshuman Singh', :image => 'iit_roorkee/mentors/anshuman_singh.svg', :company => 'iit_roorkee/company/meta.webp'},
        {:name => 'Naman Bhalla', :image => 'iit_roorkee/mentors/naman_bhalla.svg', :company => 'iit_roorkee/company/google.webp'},
        {:name => 'Deepak Kasera', :image => 'iit_roorkee/mentors/deepak_kasera.svg', :company => 'iit_roorkee/company/amazon.webp'},
        {:name => 'Suraaj Hasija', :image => 'iit_roorkee/mentors/suraaj_hasija.svg', :company => 'iit_roorkee/company/mastercard.webp'},
        {:name => 'Kshitij Mishra', :image => 'iit_roorkee/mentors/kshitij_mishra.svg', :company => 'iit_roorkee/company/snapdeal.webp'},
        {:name => 'Shivank Agrawal', :image => 'iit_roorkee/mentors/shivank_agrawal.svg', :company => 'iit_roorkee/company/microsoft.webp'}
      ]})
      content.merge!(:faqs => {:title => 'Frequently Asked Questions',:items => [
         {:question => "What is Scaler Academy's full-stack development program?", 
                          :answer => "Scaler Academy offers a structured, flexible and guided learning program for software engineers to accelerate their career. 
                          This program is open for all software engineers irrespective of the # of years of work experience or their current place of work.
                          Our features are:
                          <li>Structured curriculum that covers CS Fundamentals and System Design via a project based approach. 
                          This curriculum has been industry-vetted and reverse-engineered by analysing what it takes to be a great engineer</li>
                          <li>Live classes that are held twice a week, with the timings determined by students in the batch</li>
                          <li>Tutors who have built scalable systems in the past and understand the real-life importance of DSA and System Design, not just interview-relevant material</li>
                          <li>Quick doubt resolution from our 100+ Teaching Assistants</li>
                          <li>Aspirational peer group and access to ScalerChat, our internal communication tool wherein you can collaborate with others on projects, get authentic interview experiences and share job-referrals</li>
                          <li>Flexible curriculum that help you continue learning despite your hectic work schedule. 
                          We provide recorded lectures to view later and also allow you to move between batches at NO cost</li>
                          <li>Career support - we provide job opportunities via our 600+ employer partners, mock interview services and career planning services</li>"},
                          {:question => "What skills will I master with this full stack course?", :answer => "Skills that you will master with this full-stack course are:<br>  
                              <li>Programming constructs, algorithms, and data structures.</li>  <li>Advanced data structures, problem-solving, and computer science fundamentals.</li>  <li>Develop software and systems using OOP principles and system design techniques.</li> 
                              <li>Build full-stack apps using technologies like REST APIs, MVC, and databases like MongoDB.</li> <li>Build efficient data processing systems with ETL pipelines, big data tech, and cloud services.</li>"},
                          {:question => 'Would it be possible to defer the start of my IIT-R course until I complete my regular course ?', :answer => "We have a confirmed date for the upcoming batch at IIT-R. However, we can’t confirm at the moment when the next batch will be available. Hence, learners who wish to enrol for IIT-R can apply a 2-month pause on their regular Scaler course to complete the IIT-R program first and then resume the regular course with full focus."},
                          {:question => 'Are the instructors for IIT-R program from IIT Roorkee?' , :answer => 'Yes, the sessions are conducted by faculty from IIT Roorkee, along with Scaler Instructors.'},
                          {:question => "Is prior experience in AI/ML required for the IIT-R program?" , :answer => "No, prior experience in AI/ML is not required. The program is designed for both freshers and working professionals. A basic understanding of Python is helpful but not mandatory."},
                          {:question => "Will the program cover hands-on projects?" , :answer => "Absolutely. The program includes multiple hands-on projects in areas like: AI in Healthcare, LLMs for Developer Productivity, Building AI Agents, Evaluating Generative AI Applications, Working with APIs like OpenAI's ChatCompletion"},
                          {:question => "What is the IIT-R Campus Immersion? Is it paid ?" , :answer => "Campus Immersion is an optional 2-day visit to the IIT Roorkee campus. It includes workshops, networking, and access to IIT-R facilities. Yes, it is paid separately."},
                          {:question => "Who is eligible for Scaler Academy's Full Stack course?", 
                          :answer => "Software engineers with any number of years of experience can choose to join Scaler Academy's Full Stack program. 
                          Applicants currently in college (1st, 2nd, 3rd or final year of college) could consider to join Scaler Edge, our college student focused product. 
                          Please visit www.scaler.com/edge for more detail"},

                          {:question => "When are the live classes held?", 
                          :answer => "Live classes are normally held 2 times a week, with the exact class days and timings being determined by the batch. 
                          However, given all learners would be software engineers that are currently working, the classes would be held in the late evening or night on weekdays and any suitable time over the weekends."},
                          {:question => "What happens if I miss a lecture in this online full stack developer course?",
                          :answer => "All lectures are recorded and you will have access to the recordings after the lecture is completed."},
                          {:question => "Can I attend this full stack developer training part-time?",
                          :answer => "The program has a fixed schedule, during which you would attend live-lectures with a dedicated instructor, Teaching Assistant, and personal mentor. 
                          15 hour weekly commitment is required for the duration of the program in order to achieve positive results."},
                          {:question => "Are full stack developers in demand in 2023?",
                          :answer => "A full-stack developer is one of the high-demand jobs in the industry. 
                          Companies pay them handsomely since they contribute the most to software projects. 
                          Thus, whether you are a fresher or an experienced developer, you will always be in demand in the software industry, with great opportunities waiting for you."},
                          {:question => "Will I get a full-stack developer certification?",
                          :answer => "After the end of the full-stack developer course, you will receive a course completion certificate"},
                          {:question => "Can I enroll only into the full-stack module of the Scaler Academy Program?",
                          :answer => "No, we feel that before jumping into a full-stack module, you must learn the basics of programming, cs fundamentals, and Data Structures & Algorithms. 
                          These skills are essential to have before you can begin with a full-stack specialization."},
                          {:question => "What are the roles and responsibilities of a Full Stack Developer?",
                          :answer => "<a href='https://www.scaler.com/topics/software-engineering/full-stack-developer-job-description/'><u>Full stack developers</u></a> are computer programmers who are proficient in both front and back end coding- 
                          <li>Designing user interactions on websites</li>
                          <li>Developing servers and databases for website functionality.</li>
                          <li>Coding for mobile platforms.</li>
                          <li>Designing & developing APIs</li>"},
                          {:question => "What is the average salary for a Full Stack developer?",
                          :answer => "According to <a href='https://www.glassdoor.co.in/Salaries/full-stack-developer-salary-SRCH_KO0,20.htm' rel='nofollow'><u>Glassdoor</u></a>, the average salary for Full Stack Developers is INR 5,50000 per year in India. 
                          Full Stack Developers earn an average salary of USD 98,524 in the United States. 
                          For more detailed information, you can visit this <a href='https://www.scaler.com/topics/software-engineering/full-stack-engineer-salary/'><u>blog</u></a>."},
                          {:question => "How are Full stack developers different from software engineers?",
                          :answer => "While Full Stack Developers focus on web applications, Software Engineers specialize in native apps. 
                          And while the term Software Engineer is broad and could mean a variety of things, a Full Stack Developer's skill set is laser-focused on web development"},
                          {:question => "Is full-stack web development difficult to learn?",
                          :answer => "Full-stack developers possess a wide range of abilities and are expected to have comprehensive programming knowledge. 
                          But, its definitely possible to learn these skills with dedication and practice."},
                          {:question => "What level of coding proficiency is necessary to be successful as a full stack web developer?",
                          :answer => "Full Stack Developers must be extremely versatile, with in-depth knowledge of HTML, CSS, and JavaScript. 
                          Also, should be familiar with server-side languages such as Python, Ruby, or Node.js."},
                          {:question => "Do all sections start at the same time?",
                          :answer => "Yes, all sections start at the same time but end at different times, depending on the duration of the course for that section. 
                          The Advanced section ends in 9 months, the Intermediate section ends in 11 months and the Beginner section ends in 13 months."},
                          {:question => "Should I join the Beginner, Intermediate or Advanced section of this Full-stack developer program?",
                          :answer => "Your eligibility for the Beginner, Intermediate or Advanced section is decided basis an entrance test."},
                          {:question => "What is the duration of this full stack developer course?",
                          :answer => "Depending on which section you are allotted, the duration of the course could range from 9 to 13 months."},
                          {:question => "What is the format of the initial 30 min test?",
                          :answer => "The test will comprise of Multiple Choice Questions (MCQs) on the following topics:
                          <li>Logical reasoning and aptitude</li>
                          <li>Basic mathematics (topics like permutation and combinations, probability etc.)</li>
                          <li>Basic time complexity analysis</li>
                          <li>Questions on figuring out the outputs of small code snippets (in any of C++/Java/Python)</li>"},
                          {:question => "Can this test be taken on mobile?",
                          :answer => "Yes! We have designed the test so that it can be easily taken on mobile as well. 
                          However for best results, we would advise you to take the test in a quiet setting with minimal disruptions"},
                          {:question => "Do I need to prepare for this initial 30 min test?",
                          :answer => "No, you do not need any special preparation for this test.
                          However, if you would like, you could brush up on simple concepts like arrangement, derangement, and a few simple aptitude questions."},
                          {:question => "What is the role of the tutor in this course?",
                          :answer => "Our tutors would teach you the concepts mentioned in the course curriculum and would take live classes 3 times a week. 
                          There would be different tutors teaching different topics"},
                          {:question => "What are the profiles of the tutors?",
                          :answer => "Our tutors have built scalable systems in the past and understand the real-life importance of DSA and System Design, not just interview-relevant material. They have hands-on, real-life experience and don't just have theoretical knowledge. For more detail on our tutors, please visit <a href='https://www.scaler.com/academy'><u>www.scaler.com/academy</u></a>"},
                          {:question => "How will my doubts get solved?",
                          :answer => "We have 100+ Teaching Assistants that would solve your doubts in prompt-manner. 
                          These doubts could be related to the class content or regarding the assignments."},
                          {:question => "What is the role of the Teaching Assistant?",
                          :answer => "Teaching Assistants (TAs) work closely with the tutors to help students with their assignments and homework. 
                          They answer students' doubts via chat and video call. 
                          You would interact with TA's regularly outside of the live-class sessions to get more hands-on problem solving experience."},
                          {:question => "What are the profiles of the Teaching Assistant?",
                          :answer => "Teaching Assistants (TAs) mostly come from strong problem-solving backgrounds. 
                          They can be from a range of experiences but share a common interest towards coding and teaching alike."},
                          {:question => "How many Teaching Assistants are allotted per batch?",
                          :answer => "2 Teaching Assistants (TAs) are allotted per batch of 40-50 students. 
                          This ensures each student gets enough time with their TA and gets their queries resolved instantly."},
                          {:question => "What is the process of resolving doubts?",
                          :answer => "When a student has a doubt, he/she would raise a 'Help Request'. 
                          This 'Help Request' would be circulated within the peer group first in order to foster a sense of giving back and create a sense of community. 
                          In parallel, the Teaching Assistant is also alerted with regards to this 'Help Request'. 
                          The doubt can then be either clarified via the peer group or via the Teaching Assistants via text or via video call. 
                          If a video call is done, the Teaching Assistant can also share his/her screen to resolve the issue and help you understand the concept better. 
                          These video calls are done 1:1."},
                          {:question => "What are the prerequisites for enrolling in this full stack web developer course?",
                          :answer => "No, you do not need any prerequisites to enroll in this full-stack web developer program. 
                          It caters to both beginners and experienced professionals seeking to enhance their web development skills. 
                          However, there will be a 30 min initial MCQ test where your basics will be checked."},
                          {:question => "What is the role of the mentor?",
                          :answer => "Mentors provide personalized advice on your career. 
                          They also help you with mock interviews, help with your resume and provide career advice. 
                          Mentors do 1:1 video calls with you for 30-60 mins each for each session. 
                          It is advisable to do 2 mentor sessions every month."},
                          {:question => "What are the profiles of the mentors?",
                          :answer => "Our mentors mostly work at tier 1 product companies and would be experienced software professionals. 
                          For more information, please visit www.scaler.com/mentor"},
                          {:question => "How many mentors are allotted per batch?",
                          :answer => "Based on your background, we offer a few mentors for you to choose from at the beginning of the course. 
                          You could choose 1 mentor of your choice from this pool. 
                          We try to ensure that your mentor is relatable to your background."},
                          {:question => "Can I change my mentor?",
                          :answer => "We would entertain a request to change a mentor, but a change in mentor is done only on a case-by-case basis."},
                          {:question => "What kind of placement support will I be given?",
                          :answer => "We provide three kinds of placement support once you complete this full stack course:
                          <li>Through our network with hundreds of employer partners, we would arrange for you to have access to job opportunities in order to accelerate your career or change companies.</li>
                          <li>Our student, tutor and mentor community frequently posts job opportunities from their network as well, via ScalerChat (please visit <a href='https://www.scaler.com/mentor'><u>www.scaler.com/mentor</u></a> for details)</li>
                          <li>Preparation assistance via mock interviews, resume reviews etc
                          With the right teaching, curriculum and guidance, we are confident you will achieve your goals.</li>"},
                          {:question => "Could someone help me do mock interviews?",
                          :answer => "Yes! We strive to help you prepare for your job interviews via mock interviews. Mock interviews can be done in two parts:
                          <li>Students can choose to do mock interviews with their mentors (as mentioned in the 'Mentor' section of these FAQs).</li>
                          <li>We would connect you with a working professional in the company in which you would be interviewing. 
                          This would help you get in-depth knowledge of the company and do a more focused mock-interview to get prepared.</li>"},
                          {:question => "Who are your employer partners?",
                          :answer => "Our employer partners range from technology MNCs (Multinational Corporations) to fast-growing startups to companies in the financial services space. 
                          Please visit www.scaler.com/mentor to learn more about where our alumni are placed."},
                          {:question => "What are the top companies hiring Full Stack Developers?",
                          :answer => "Here are the best companies Full stack Developers-
                          <li>Cognizant Technology</li>
                          <li>Capgemini</li>
                          <li>Mindtree</li>
                          <li>Wipro</li>
                          <li>Deloitte</li>
                          <li>Accenture</li>
                          <li>IBM</li>"},
                          {:question => "What kind of roles do employers hire for?",
                          :answer => "Employers hire for a wide variety of roles, including full-stack engineering and backend-engineering across a range of work experience. 
                          We would be careful to ensure that you apply to companies that match your qualifications and strengths."},
                          {:question => "When would employers come to Scaler Academy to hire full stack developers?",
                          :answer => "Employers typically hire full stack developers all through the year, depending on their requirements. 
                          When employers do approach us, we would make the opportunity visible to students in the batch. 
                          Students are welcome to apply for opportunities that interest them. 
                          Each opportunity would have a test associated with it and students would be referred based on their performance in these tests and other factors like attendance and their problem-solving percentage."},
                          {:question => "What is the total tuition fee?",
                          :answer => "The fee for the Full Stack Developer program is competitive and reflects the comprehensive nature of the curriculum, mentorship, and placement support. Please contact our team for detailed pricing."},
                          {:question => "Are there scholarships?",
                          :answer => "Yes!
                          Way of getting exciting scholarships at Scaler Academy
                          Get up to INR 25,000 as scholarship basis your performance in the 30 minutes entrance test!"},
                          {:question => "Can I pay in EMIs?",
                          :answer => "Yes! Via our NBFC partners, we provide a range of EMI options, from zero-interest EMI options (upto 12 months) and longer tenure loans of 24 months and 36 months. 
                          The longer tenure loans of 24 months and 36 months will include the interest cost."}
      ]})
      content.merge!(:footer => {:title => 'Master Full Stack & Software Engineering Skills', :subtitle => 'Take the first step towards becoming a part of the Top 1% in Tech', :cta_text => 'Download Brochure'})
      content.merge!(:iit_roorkee => {:title => 'Learners will also get a unique opportunity to spend 2 days at the IIT Roorkee campus for lectures and activities. These sessions will be held over and above the 60 sessions that are part of the program.', :benefits => [
        '12 hours of hands-on learning',
        'IIT-R resources & facilities at your disposal',
        'Access to research labs with cutting-edge tech',
        'Fireside chat with industry experts',
        'Food & accommodation included',
        'On-campus networking opportunities'
      ]})



      CoursePageTemplateService.new(
        title: "Full stack developer Program",
        content: content
      ).execute
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end