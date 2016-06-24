package org.vo;

public class Course {

    private String kch;     // 课程号
    private String kcm;     // 课程名
    private int kkxq;       // 开课学期
    private int xs;         // 学时
    private int xf;         // 学分
    public Course(){}
    
    public Course(String kch, String kcm, int kkxq, int xs, int xf) {
        super();
        this.kch = kch;
        this.kcm = kcm;
        this.kkxq = kkxq;
        this.xs = xs;
        this.xf = xf;
    }

    public String getKch() {
        return kch;
    }

    public void setKch(String kch) {
        this.kch = kch;
    }

    public String getKcm() {
        return kcm;
    }

    public void setKcm(String kcm) {
        this.kcm = kcm;
    }

    public int getKkxq() {
        return kkxq;
    }

    public void setKkxq(int kkxq) {
        this.kkxq = kkxq;
    }

    public int getXs() {
        return xs;
    }

    public void setXs(int xs) {
        this.xs = xs;
    }

    public int getXf() {
        return xf;
    }

    public void setXf(int xf) {
        this.xf = xf;
    }
    
}
