
class Myroutes {

  static String home = "/";

  static String resumeWorkspace = 'resume_workspace';

  static String pdfPage = "pdf_Page";

  static String splashScreen = 'splash_screen';

  static String iconpath = 'assets/icons/';

  static List<Map<String, dynamic>> buildoptions = [
    {
      'name': 'contact_info',
      'title': 'Contact Info',
      'icon': "${iconpath}account.png",
    },
    {
      'name': 'carrier_objective',
      'title': 'Carrier Objective',
      'icon': "${iconpath}briefcase.png",
    },

    {
      'name': 'personal_details',
      'title': 'Personal Details',
      'icon': "${iconpath}account.png",
    },
    {
      'name': 'education_page',
      'title': 'Education',
      'icon': "${iconpath}graduation-cap.png",
    },
    {
      'name': 'experiences',
      'title': 'Experiences',
      'icon': "${iconpath}experience.png",
    },
    {
      'name': 'technical_skills',
      'title': 'Techanical Skills',
      'icon': "${iconpath}logical-thinking.png",
    },
    {
      'name': 'interest/hobbies',
      'title': 'Interest/Hobbies',
      'icon': "${iconpath}open-book.png",
    },
    {
      'name': 'projects',
      'title': 'Projects',
      'icon': "${iconpath}logical-thinking.png",
    },
    {
      'name': 'achievements',
      'title': 'Achievements',
      'icon': "${iconpath}certificate.png",
    },
    {
      'name': 'references',
      'title': 'References',
      'icon': "${iconpath}handshake.png",
    },
    {
      'name': 'declaration',
      'title': 'Declaration',
      'icon': "${iconpath}declaration.png",
    },






  ];
}