package org.vo;

public class Score {

    private String xh;  // 学号
    private String kch; // 课程号
    private String cj;  // 成绩
    
    public Score() {}
    
    public Score(String xh, String kch, String cj) {
        super();
        this.xh = xh;
        this.kch = kch;
        this.cj = cj;
    }

    public String getXh() {
        return xh;
    }

    public void setXh(String xh) {
        this.xh = xh;
    }

    public String getKch() {
        return kch;
    }

    public void setKch(String kch) {
        this.kch = kch;
    }

    public String getCj() {
        return cj;
    }

    public void setCj(String cj) {
        this.cj = cj;
    }
    
}
