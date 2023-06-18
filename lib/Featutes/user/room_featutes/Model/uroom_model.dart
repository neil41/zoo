
class URoomModel {

  static List<dynamic> u_room = [
    {"name":"Room 1" ,"seats": "20","Baht": "100","type": u_ListType1,},
    { "name":"Room 2","seats": "30", "Baht": "150","type":u_ListType2, },
    { "name":"Room 3","seats": "50", "Baht": "500","type":u_ListType3, },

  ];
  static List<dynamic> u_ListType1 = [
    {"type": u_t11_animal,"nametype": "Carnivore"},
    {"type": u_t12_animal,"nametype": "Herbivore"},
    {"type": u_t13_animal,"nametype": "Carnivore"},

  ];

  static List<dynamic> u_ListType2 = [
    {"type": u_t21_animal,"nametype": "Carnivore"},
    {"type": u_t22_animal,"nametype": "Herbivore"},
  ];

  static List<dynamic> u_ListType3 = [
    {"type": u_t31_animal,"nametype": "Herbivore"},
  ];

static List<dynamic> u_t11_animal = [
    {"Animal": "เสือดาว","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "เสือชีต้า","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "เสือดำ","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "เสือโค้ง","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "Dolphin", "Species":"dontoceti","type": "Carnivore", "Show_duration": "30 minutes"},
  ];

  static List<dynamic> u_t12_animal = [
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},

  ];
  static List<dynamic> u_t13_animal = [
    {"Animal": "เสือดาว","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "เสือดำ","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
  ];

  static List<dynamic> u_t21_animal = [
    {"Animal": "Tiger","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "Tiger","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "Tiger","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "Tiger","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
    {"Animal": "Tiger","Species":"Big cat","type": "Carnivore", "Show_duration": "10 minutes",},
  ];

  static List<dynamic> u_t22_animal = [
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},

  ];

  static List<dynamic> u_t31_animal = [
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
    {"Animal": "Monkey", "Species":"Chimpanzee","type": "Herbivore", "Show_duration": "20 minutes"},
  ];

}
