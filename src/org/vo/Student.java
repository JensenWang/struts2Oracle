package org.vo;

import java.util.Date;

public class Student {
    
    private String xh;  // 学号
    private String xm;  // 姓名
    private String xb;  // 性别
    private Date cssj;  // 出生时间
    private String zy;  // 专业
    private int zxf;    // 总学分
    private String bz;  // 备注
    private byte[] zp;  // 照片，字节数组
    
    public Student() {}
    
    // 构造方法给成员变量赋值
    public Student(String xh, String xm, String xb, Date cssj, String zy, int zxf, String bz, byte[] zp) {
        this.xh = xh;
        this.xm = xm;
        this.xb = xb;
        this.cssj = cssj;
        this.zy = zy;
        this.zxf = zxf;
        this.bz = bz;
        this.zp = zp;
    }

    // 生成get，set方法
    public String getXh() {
        return xh;
    }

    public void setXh(String xh) {
        this.xh = xh;
    }

    public String getXm() {
        return xm;
    }

    public void setXm(String xm) {
        this.xm = xm;
    }

    public String getXb() {
        return xb;
    }

    public void setXb(String xb) {
        this.xb = xb;
    }

    public Date getCssj() {
        return cssj;
    }

    public void setCssj(Date cssj) {
        this.cssj = cssj;
    }

    public String getZy() {
        return zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public int getZxf() {
        return zxf;
    }

    public void setZxf(int zxf) {
        this.zxf = zxf;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public byte[] getZp() {
        return zp;
    }

    public void setZp(byte[] zp) {
        this.zp = zp;
    }
    
}
