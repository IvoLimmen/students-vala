public class Course : Object {
  public string name { get; set; }
  private List<float?> grades;
  
  public Course(string name) {
    this.grades = new List<float?> ();
    this.name = name;
  }

  public void addGrade(float grade) {
    this.grades.append(grade);
  }

  public void total() {
    uint exams = this.grades.length();
    float avg = 0;

    foreach (float grade in grades) {
      avg += grade;
    }
    avg /= exams;
    stdout.printf("%s - %d exams - %g avg\n", this.name, (int) exams, avg);
  }
}