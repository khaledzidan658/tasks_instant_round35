import 'dart:io';

void main()
{
print5doctors();
}
void print5doctors(){
  List<Doctor> doctors=[];
  for(var i=1 ; i<6 ;i++){
     String id ,name;
     double salary;
     id='D00$i';

      print("Enter doctor$i name");
      name=stdin.readLineSync()!;

      print("Enter doctor$i  salary");
      salary=double.parse(stdin.readLineSync()!); 

      doctors.add(Doctor(id: id, name: name, salary: salary));
      
  }
  
  print("/n");
    print("=== Doctor information"); 
 double sum =0, max=0, avg;
 String maxname;

  for(Doctor doctor in doctors){
  doctor.displayinfo();

if (doctor.salary > max) {
      max = doctor.salary;
     maxname=doctor.name; 
      }

        sum += doctor.salary;
  }

  avg=sum /doctors.length;

  print("\n");
    print('=== Salary Statistics');
    print("Total Salaries : \$$sum");
     print("Average Salary : \$$avg");
      print("Heighst Salaries : \$$max");

              // **Search Function**
      print("\n Do you want to search by:");
      print("1 - ID");
 
      print("2 - Name");

  String results = stdin.readLineSync()!;

  if (results == "1") {
    print("Enter part of ID to search:");
    String searchId = stdin.readLineSync()!;

    print("\n === Search Results === ");

    for (int i = 0; i < doctors.length; i++) {
      if (doctors[i].id.contains(searchId)) {
        doctors[i].displayinfo();
      }

    }

  } else if (results == "2") {
    print("Enter part of name to search:");
    String searchName = stdin.readLineSync()!;

    print("\n=== Search Results ===");

    for (int i = 0; i < doctors.length; i++) {
      if (doctors[i].name.toLowerCase().contains(searchName.toLowerCase())) {
        doctors[i].displayinfo();
      }
    }

  } else {
    print(" Invalid choice! ");
  }

}

class Doctor{
final String id;
final String name; 
final double salary;
const Doctor({required this.id, required this.name , required this.salary});

  void displayinfo()  {
    print("ID : $id | name : DR.$name | slaray : \$$salary ");
   }
Map<String,dynamic> toMap(){
  return{
    'id':id,
    'name':name,
    'salary':salary
  };
}

}