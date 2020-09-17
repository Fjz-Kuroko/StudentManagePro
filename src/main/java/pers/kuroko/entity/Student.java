package pers.kuroko.entity;

public class Student {

    private int id;
    private String name;
    private String sex;
    private int age;
    private String insitute;
    private String majo;
    private int grade;
    private int clazz;

    public Student() {
    }

    public Student(int id, String name, int age, String insitute, String majo, int grade, int clazz) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.insitute = insitute;
        this.majo = majo;
        this.grade = grade;
        this.clazz = clazz;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getInsitute() {
        return insitute;
    }

    public void setInsitute(String insitute) {
        this.insitute = insitute;
    }

    public String getMajo() {
        return majo;
    }

    public void setMajo(String majo) {
        this.majo = majo;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getClazz() {
        return clazz;
    }

    public void setClazz(int clazz) {
        this.clazz = clazz;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", insitute='" + insitute + '\'' +
                ", majo='" + majo + '\'' +
                ", grade=" + grade +
                ", clazz=" + clazz +
                '}';
    }
}
