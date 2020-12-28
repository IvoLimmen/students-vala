
public void help() {
  stdout.printf("Grading system\n");  
  stdout.printf("add-student [name] - Add student\n");
  stdout.printf("select-student [name] - Select a student\n");
  stdout.printf("add-grade [course] [grade] - Add a grade for a course for the current selected student\n");
  stdout.printf("end - Stop the program\n");
}

static void main() {
  string command = null;
  Student? student = null;
  var students = new List<Student?>();

  while (command != "end") {
    command = stdin.read_line();

    if (command == null || command.length == 0) {
      help();
    } else if (command.index_of("add-student") != -1) {
      var name = command.slice(11, command.length);
      student = new Student(name);
      students.append(student);
    } else if (command.index_of("select-student") != -1) {
      var name = command.slice(14, command.length);
      foreach (Student s in students) {
        if (s.name == name) {
          student = s;
          break;
        }
      }
      if (student == null) {
        stdout.printf("Student %s NOT found\n", name);        
      } else {
        stdout.printf("Student %s is selected\n", name);        
      }
    } else if (command.index_of("add-grade") != -1) {
      var args = command.slice(9, command.length).strip().split(" ");
      var name = args[0];
      var grade = float.parse(args[1]);
      if (student == null) {
        stdout.printf("No student selected, can not add a grade\n");        
      } else {
        student.addGrade(name, grade);        
      }       
    } else {
      stdout.printf("Unknown command: %s\n", command);
      help();
    }
  }

  foreach (Student s in students) {
    s.totals();
  }
}