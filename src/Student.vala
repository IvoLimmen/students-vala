public class Student : Object {
  private List<Course> courses = new List<Course>();
  public string name { get; set; }

  public Student(string name) {
    this.name = name;
  }

  public void addGrade(string course, float grade) {
    Course c = null;
    foreach (Course i in this.courses) {
      if (i.name == course) {
        c = i;
        break;
      }
    }
    if (c == null) {
      c = new Course(course);
      this.courses.append(c);
    }
    c.addGrade(grade);
  }

  public void totals() {
    stdout.printf("Grades for %s\n", this.name);
    foreach (Course course in this.courses) {
      course.total();
    }
  }
}