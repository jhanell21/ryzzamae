import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BioDataPage(),
      theme: ThemeData(
        fontFamily: 'Times New Roman',
      ),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 750,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ==============================
                  // HEADER
                  // ==============================

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // BIO-DATA TITLE
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'BIO-DATA',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // PHOTO
                      Container(
                        width: 120,
                        height: 135,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),

                        clipBehavior: Clip.antiAlias,

                        child: Image.asset(
                          'assets/images/profile.jpeg',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.person,
                                size: 70,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ==============================
                  // PERSONAL DATA
                  // ==============================

                  sectionTitle('PERSONAL DATA'),

                  const SizedBox(height: 8),

                  bioRow(
                    'Name',
                    'Bernandino, Jhanell C.',
                  ),

                  bioRow(
                    'Gender',
                    'Female',
                  ),

                  bioRow(
                    'Date of Birth',
                    'January 21, 2006',
                  ),

                  bioRow(
                    'Current Address',
                    '2543 Felix Huertas St. Sta. Cruz, Manila',
                  ),

                  bioRow(
                    'Permanent Address',
                    '2543 Felix Huertas St. Sta. Cruz, Manila',
                  ),

                  const SizedBox(height: 15),

                  // ==============================
                  // PERSONAL INFORMATION
                  // ==============================

                  sectionTitle('PERSONAL INFORMATION'),

                  const SizedBox(height: 8),

                  bioRow(
                    'Age',
                    '20',
                  ),

                  bioRow(
                    'Occupation',
                    'Student',
                  ),

                  bioRow(
                    'Civil Status',
                    'Single',
                  ),

                  bioRow(
                    'Place of Birth',
                    'Manila, Philippines',
                  ),

                  bioRow(
                    'Height',
                    '5\'3"',
                  ),

                  bioRow(
                    'Weight',
                    '43 kg',
                  ),

                  bioRow(
                    "Father's Name",
                    'Rolando S. Bernandino',
                  ),

                  bioRow(
                    "Mother's Name",
                    'Roselle E. Chuidian',
                  ),

                  const SizedBox(height: 15),

                  // ==============================
                  // LANGUAGE
                  // ==============================

                  sectionTitle('LANGUAGE'),

                  const SizedBox(height: 8),

                  bioRow(
                    'Language or dialect spoken',
                    'Filipino, English',
                  ),

                  const SizedBox(height: 15),

                  // ==============================
                  // EMERGENCY CONTACT
                  // ==============================

                  sectionTitle('EMERGENCY CONTACT'),

                  const SizedBox(height: 8),

                  bioRow(
                    'Person to be contacted in case of emergency',
                    'Roselle E. Chuidian',
                  ),

                  bioRow(
                    'Address',
                    '2543 Felix Huertas St. Sta. Cruz, Manila',
                  ),

                  bioRow(
                    'Contact No',
                    '09124263202',
                  ),

                  const SizedBox(height: 15),

                  // ==============================
                  // OTHER INFORMATION
                  // ==============================

                  sectionTitle('OTHER INFORMATION'),

                  const SizedBox(height: 8),

                  bioRow(
                    'Cellphone',
                    '09270693821',
                  ),

                  bioRow(
                    'Email',
                    'bernandinojhanell@gmail.com',
                  ),

                  bioRow(
                    'Citizenship',
                    'Filipino',
                  ),

                  bioRow(
                    'Religion',
                    'Catholic',
                  ),

                  bioRow(
                    'Occupation',
                    'Student',
                  ),

                  const SizedBox(height: 20),

                  // ==============================
                  // EDUCATIONAL BACKGROUND
                  // ==============================

                  sectionTitle('EDUCATIONAL BACKGROUND'),

                  const SizedBox(height: 10),

                  educationRow(
                    'Elementary',
                    'Plaridel Elementary School',
                    '2013-2018',
                  ),

                  educationRow(
                    'High School',
                    'Manuel L. Quezon High School',
                    '2018-2022',
                  ),

                  educationRow(
                    'College',
                    'Global Reciprocal Colleges',
                    '2022-2027',
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ==============================
  // SECTION TITLE
  // ==============================

  static Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // ==============================
  // BIO DATA ROW
  // ==============================

  static Widget bioRow(
    String label,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // LABEL
          SizedBox(
            width: 210,

            child: Text(
              '$label:',

              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // VALUE
          Expanded(
            child: Text(
              value,

              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ==============================
  // EDUCATION ROW
  // ==============================

  static Widget educationRow(
    String level,
    String school,
    String year,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // LEVEL
          SizedBox(
            width: 100,

            child: Text(
              '$level:',

              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // SCHOOL
          Expanded(
            child: Text(
              school,

              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          const SizedBox(width: 10),

          // YEAR
          Text(
            'Year: $year',

            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}