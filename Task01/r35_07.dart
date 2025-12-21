class Doctor{
    final String id;
    final String name;
    final double salary;
    
    Doctor({required this.id , required this.name , required this.salary});


void displayInfo(){
    print("Id: $this.id | Name: $this.name | Salary: $this.salary");
}


Map<String,dynamic> toMap(){
    return {"id": id, "name": name, "salary":salary};

}


}

void salaries(List<Doctor> doctors){

double maxSalary = doctors[0].salary;

for (var doc in doctors) {
  if (doc.salary > maxSalary) 
  maxSalary = doc.salary ;
}

double sum =0;
for (var doc in doctors){
    sum+= doc.salary;
}

print("The maximum salary is: $maxSalary"); 
   print("Sum of doctor salaries is $sum");
  print("Average of the salaries is : ${sum / doctors.length}");

  
}
void main() {
  
  List<Doctor> doctors = [
    Doctor(id: 'D1', name: 'Sarah', salary: 12000),
    Doctor(id: 'D2', name: 'Omar', salary: 18000),
    Doctor(id: 'D3', name: 'Lena', salary: 15000),
    Doctor(id: 'D4', name: 'Khaled', salary: 20000),
    Doctor(id: 'D5', name: 'Mona', salary: 17000),
  ];

 

print('--- Doctors Table ---');
print('ID\tName\tSalary');
print('---------------------------');

for (var doc in doctors) {
  print('${doc.id}\t${doc.name}\t${doc.salary}');
}

  salaries(doctors);

}