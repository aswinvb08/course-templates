class AddCoursesSeoPageContent < ActiveRecord::Migration[5.1]
    def up
      return unless Rails.is_scaler?
  
      #this is for full stack course v0 version.,
      #for v1 we will create a service and course page templates with some placeholder.
      Course.find_by(:slug => "data-structures-and-algorithms-program")&.destroy
      content = {:metadata => {:jsonld => "true", :program => "academy", :header => nil, :links => [{:url => "#highlights", :text => "Highlights"}, 
                {:url => "#alumni", :text => "Alumni"}, {:url => "#mentors", :text => "Instructors"}, {:url => "#faqs", :text => "FAQs"}], :next_batch_details => {:course_slug => "wp", :course_type => "intake"}}}
      content.merge!(:banner => {
        :tagName => 'For Working Professionals',
        :title => 'Master Data Structures and Algorithms With the Scaler Academy Course',
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
      content.merge!(:benefits => {:title => 'Why DSA? Why Now?',:items => [
        {:title => 'Master Interviews', :description => 'Secure competitive product interviews with crucial data structures knowledge', :icon => 'iit_roorkee/benefits/interview.svg'},
        {:title => 'Build Intuition', :description => 'Develop deep understanding of complex inner workings of various algorithms', :icon => 'iit_roorkee/benefits/intution.svg'},
        {:title => 'Optimize Solutions', :description => 'Clear core concepts to choose most efficient data structures effectively', :icon => 'iit_roorkee/benefits/solution.svg'}
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
        {:name => 'Anshuman Singh', :image => 'https://d2beiqkhq929f0.cloudfront.net/public_assets/assets/000/096/486/original/cert.webp?1731500934', :company => 'iit_roorkee/company/meta.webp'},
        {:name => 'Naman Bhalla', :image => 'iit_roorkee/mentors/naman_bhalla.svg', :company => 'iit_roorkee/company/google.webp'},
        {:name => 'Deepak Kasera', :image => 'iit_roorkee/mentors/deepak_kasera.svg', :company => 'iit_roorkee/company/amazon.webp'},
        {:name => 'Suraaj Hasija', :image => 'iit_roorkee/mentors/suraaj_hasija.svg', :company => 'iit_roorkee/company/mastercard.webp'},
        {:name => 'Kshitij Mishra', :image => 'iit_roorkee/mentors/kshitij_mishra.svg', :company => 'iit_roorkee/company/snapdeal.webp'},
        {:name => 'Shivank Agrawal', :image => 'iit_roorkee/mentors/shivank_agrawal.svg', :company => 'iit_roorkee/company/microsoft.webp'}
      ]})
      content.merge!(:faqs => {:title => 'Frequently Asked Questions',:items => [
        {:question => 'What are Data Structures?', :answer => 'Data Structures are typically used to organize, process, retrieve and store data on computers for efficient use. Having the right understanding and using the right data structures helps software engineers write the right code.'},
        {:question => 'What are the types of Data Structures?', :answer => 'Linear Data structure: If the elements of a data structure result in a sequence or a linear list then it is called a Linear data structure. Every data element is connected to its next and sometimes previous element in a sequential manner. Example - Arrays, Linked Lists, Stacks, Queues, etc. Non-linear Data structure: If the elements of a Data structure result in a way that the traversal of nodes is not done in a sequential manner, then it is a Non-linear data structure. Its elements are not sequentially connected, and every element can attach to another element in multiple ways. Example - Hierarchical data structure like trees.'},
        {:question => 'Why are Data Structures important?', :answer => "Data structures are a key component of Computer Science and help in understanding the nature of a given problem at a deeper level. They're widely utilized in Artificial Intelligence, operating systems, graphics, and other fields. If the programmer is unfamiliar with data structure and Algorithm, they may be unable to write efficient data-handling code. A strong grasp of this is of paramount significance if you want to learn how to organize and assemble data and solve real-life problems. Almost all product-based companies look at how strong you are at data structures, so it will also help you in your day-to-day work. Knowing when to apply the proper data structures is an important step to write efficient code by managing data properly"},
        {:question => 'Would it be possible to defer the start of my IIT-R course until I complete my regular course ?', :answer => "We have a confirmed date for the upcoming batch at IIT-R. However, we can’t confirm at the moment when the next batch will be available. Hence, learners who wish to enrol for IIT-R can apply a 2-month pause on their regular Scaler course to complete the IIT-R program first and then resume the regular course with full focus."},
        {:question => 'Are the instructors for IIT-R program from IIT Roorkee?' , :answer => 'Yes, the sessions are conducted by faculty from IIT Roorkee, along with Scaler Instructors.'},
        {:question => "Is prior experience in AI/ML required for the IIT-R program?" , :answer => "No, prior experience in AI/ML is not required. The program is designed for both freshers and working professionals. A basic understanding of Python is helpful but not mandatory."},
        {:question => "Will the program cover hands-on projects?" , :answer => "Absolutely. The program includes multiple hands-on projects in areas like: AI in Healthcare, LLMs for Developer Productivity, Building AI Agents, Evaluating Generative AI Applications, Working with APIs like OpenAI's ChatCompletion"},
        {:question => "What is the IIT-R Campus Immersion? Is it paid ?" , :answer => "Campus Immersion is an optional 2-day visit to the IIT Roorkee campus. It includes workshops, networking, and access to IIT-R facilities. Yes, it is paid separately."},
        {:question => "Why are data structures important for coding interviews?" , :answer => "As a software engineer/programmer, one should understand the core concepts of data handling. Understanding data structures and algorithms will benefit candidates in coding interviews, as they will be able to write efficient code to handle the data presented by the interviewer/interviewers. They can write code in any programming language with minimal effort"},
        {:question => "What are the applications of data structure and algorithms?" , :answer => "Product companies worldwide screen applicants based on their grasp of data structures and algorithms. Aside from getting through to product-based companies, the application of data structures and algorithms in the tech world is huge. DSA has been the core of computer programming from the beginning and has been the building block of the software development process, it is incorporated into all of the important languages. The efficiency of software development depends on the choice of an appropriate data structure and algorithm"},
        {:question => "How to master data structures and algorithms?" , :answer => "The key to mastering DSA is to practice as many problems as possible and do so consistently. We provide a pool of problems focused on data structures and algorithms to help you practice as much as you want, stay consistent, and track your progress. Establishing a solid foundation is crucial so staying patient and continuing the pace of learning will eventually pay off"},
        {:question => "What does Scaler's Data Structures and Algorithms course cover?" , :answer => "Data Structures and Algorithms module, which is covered under the Scaler Academy Program will give you expert-level knowledge of DSA and prepare you for interviews that will help advance your career. Students will receive advanced and valuable training in data structures, algorithms, and large-scale systems design, as well as gain insight into how various DSAs work. Recursion, arrays, linked lists, stacks, queues, strings, binary search, trees, heaps, arithmetic operators, loops, etc., will also be covered by experienced instructors."},
        {:question => "Why should you take Scaler's Data Structures and Algorithms course?" , :answer => "Enrolling in the Scaler Academy program, which covers Data Structures and Algorithms will prepare you for interviews and help you advance your career. You'll gain extensive practical experience by working on real-world projects. Students are provided with a well-structured curriculum curated by industry experts that combines CS basics, web development skills, and fundamental DSA skills that will prepare them for technical interviews. Besides improving fundamental DSA skills, our instructors and mentors are well-equipped to assist candidates with behavioral interviews."},
        {:question => "Is Data Structures and Algorithms course difficult to learn?" , :answer => "No, learning Data Structures and Algorithms is not difficult as long as you have the motivation to learn. Developing this skill or knowledge simply requires practice and time. Once you've learned the fundamentals of data science, learning algorithms is a great next step."},
        {:question => "Who should take this Data Structures and Algorithms course?" , :answer => "Any working professional interested in pursuing or upskilling their career in software engineering, development, and programming can enroll in this program."},
        {:question => "Is a certificate provided at the end of the course?" , :answer => "Yes, Scaler Academy will issue you a certificate upon completion of the program."},
        {:question => "What if I miss a lecture during the course?" , :answer => "There is no need to worry; during the course, all lectures will be recorded, and you will be able to access them afterward."}
      ]})
      content.merge!(:footer => {:title => 'Master the art of applying proper Data Structures, 
and write efficient code', :subtitle => 'Take the first step towards becoming a part of the Top 1% in Tech', :cta_text => 'Download Brochure'})
      content.merge!(:iit_roorkee => {:title => 'Learners will also get a unique opportunity to spend 2 days at the IIT Roorkee campus for lectures and activities. These sessions will be held over and above the 60 sessions that are part of the program.', :benefits => [
        '12 hours of hands-on learning',
        'IIT-R resources & facilities at your disposal',
        'Access to research labs with cutting-edge tech',
        'Fireside chat with industry experts',
        'Food & accommodation included',
        'On-campus networking opportunities'
      ]})



      CoursePageTemplateService.new(
        title: "Data Structures and Algorithms Program",
        content: content
      ).execute
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
  