List dtcImages = [
  "$dtsAssets/dtc_1.jpg",
  "$dtsAssets/dtc_2.jpg",
  "$dtsAssets/dtc_3.jpg",
  "$dtsAssets/dtc_4.jpg",
  "$dtsAssets/dtc_5.jpg",
  "$dtsAssets/dtc_6.png",
];
String dtsAssets = "images/dtc";
List electricSections = [
  {
    "name": "صيانة موبايل",
    "image": "$electricAssets/mobile.jpg",
    "images": [
      "$electricAssets/mobile/mobile1.jpg",
      "$electricAssets/mobile/mobile2.jpg",
      "$electricAssets/mobile/mobile3.png"
    ],
    "requirements": {"cretifcate": "شهادة تاسع", "result": "1600 على الأقل"},
    "duration": "سنة",
    "trainer": "مصطفى خرطبيل",
    "description":
        "Adipisicing consequat aliquip id esse exercitation. Tempor quis anim reprehenderit duis sunt ex aute irure pariatur exercitation velit reprehenderit. Culpa esse non aliquip eu magna do occaecat nostrud commodo. Cupidatat irure ipsum est proident consequat et nisi nostrud labore elit fugiat nostrud. Et quis qui tempor irure reprehenderit cupidatat aliqua id nostrud enim sunt quis excepteur quis. Incididunt ad reprehenderit qui veniam. Irure ex Lorem nisi magna."
  },
  {"name": "كهرباء منزلية", "image": "$electricAssets/light.jpg"},
  {"name": "كهرباء صناعية", "image": "$electricAssets/electric.jpg"},
  {"name": "إنذار و مراقبة", "image": "$electricAssets/cctv.jpg"},
];
String electricAssets = "images/electric";

List itSection = [
  {"name": "قسم الإلكترون", "image": "$itAssets/it.jpg"},
  {"name": "قسم الإلكترون", "image": "$itAssets/it.jpg"},
  {"name": "قسم الإلكترون", "image": "$itAssets/it.jpg"},
];
String itAssets = 'images/itsection';

List accountingSection = [
  {"name": "قسم المحاسبة", "image": "$accountingAssets/accounting.jpg"}
];
String accountingAssets = "images/accountingsection";

List businessSection = [
  {"name": "قسم إدارة الأعمال", "image": "$businessAssets/business.jpg"}
];
String businessAssets = "images/businesssection";

List medicineSection = [
  {"name": "قسم الصيدلة", "image": "$mediceneAssets/medicen.jpg"}
];
String mediceneAssets = "images/medicinesection";

List engineeringSection = [
  {"name": "قسم المعماري", "image": "$enginnerAssets/engineering.jpg"}
];
String enginnerAssets = "images/engineersection";

List designSection = [
  {"name": "قسم التصميم", "image": "$designAssets/design.jpg"}
];
String designAssets = "images/designsection";

List labsSection = [
  {"name": "قسم المخبر", "image": "$labsAssets/labs.jpg"}
];
String labsAssets = "images/labssection";

List sections = [
  {"name": "قسم الكهرباء", "image": "$sectionsAssets/electric.jpg"},
  {"name": "قسم المعلوماتية", "image": "$sectionsAssets/it.jpg"},
  {"name": "قسم المحاسبة", "image": "$sectionsAssets/accounting.jpg"},
  {"name": "قسم إدارة الأعمال", "image": "$sectionsAssets/business.jpg"},
  {"name": "قسم الصيدلة", "image": "$sectionsAssets/medicen.jpg"},
  {"name": "قسم الهندسي", "image": "$sectionsAssets/engineering.jpg"},
  {"name": "قسم التصميم الإعلاني", "image": "$sectionsAssets/design.jpg"},
  {"name": "قسم المخبري", "image": "$sectionsAssets/labs.jpg"}
];

String sectionsAssets = "images/sections";

Map subSection = {
  "قسم الكهرباء": electricSections,
  "قسم المعلوماتية": itSection,
  "قسم المحاسبة": accountingSection,
  "قسم إدارة الأعمال": businessSection,
  "قسم الصيدلة": medicineSection,
  "قسم الهندسي": engineeringSection,
  "قسم التصميم الإعلاني": designSection,
  "قسم المخبري": labsSection,
};
