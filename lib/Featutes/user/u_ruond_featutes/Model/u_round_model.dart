class URoundModel{

  static List<dynamic> USeats = [
    {"round":"A1","color":false},
    {"round":"A2","color":false},
    {"round":"A3","color":false},
    {"round":"A4","color":false},
    {"round":"A5","color":false},
    {"round":"B1","color":false},
    {"round":"B2","color":false},
    {"round":"B3","color":false},
    {"round":"B4","color":false},
    {"round":"B5","color":false},
    {"round":"C1","color":false},
    {"round":"C2","color":false},
  ];


  static List<dynamic> URound = [
    {"name":"รอบที่ 1", "round": Round1, "next": "รอบถัดไป ->",},
    {"name":"รอบที่ 2", "round": Round2, "next": "รอบถัดไป ->"},
    {"name":"รอบที่ 3", "round": Round3, "next": ""},
  ];

  static List<dynamic> Round1 = [
    {"Animal": "Tiger", "room": "Room 1", "Baht":"20","time": "10.00 Am","Show_duration": "10 minutes"},
    {"Animal": "Monkey", "room": "Room 2", "Baht":"50","time": "09.00 Am","Show_duration": "20 minutes"},
    {"Animal": "Dolphin", "room": "Room 3", "Baht":"100","time": "11.00 Am","Show_duration": "30 minutes"},
  ];

  static List<dynamic> Round2 = [
    {"Animal": "Tiger", "room": "Room 1","Baht":"20" ,"time": "01:00 Pm","Show_duration": "10 minutes"},
    {"Animal": "Monkey", "room": "Room 2", "Baht":"50","time": "01:00 Pm","Show_duration": "20 minutes"},
    {"Animal": "Dolphin", "room": "Room 3", "Baht":"100","time": "03:00 Pm","Show_duration": "30 minutes"},
  ];
  static List<dynamic> Round3 = [
    {"Animal": "Tiger", "room": "Room 1", "Baht":"20","time": "03:00 Pm","Show_duration": "10 minutes"},
    {"Animal": "Monkey", "room": "Room 2", "Baht":"50","time": "04:00 Pm","Show_duration": "20 minutes"},
    {"Animal": "Dolphin", "room": "Room 3", "Baht":"100","time": "07:00 Pm","Show_duration": "30 minutes"},
  ];

}