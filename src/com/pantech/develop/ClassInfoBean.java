package com.pantech.develop;

import com.pantech.base.common.db.DBSource;
import net.sf.json.JSONArray;

import javax.servlet.http.HttpServletRequest;

public class ClassInfoBean {

    //创建entity属性
    private String classId = "";//课程代码
    private String className = "";//课程名称
    private String classType = "";//课程类型
    private String speciality = "";//所属专业
    private String department = "";//所属系部

    private String msg = "";//返回消息

    private DBSource db;//数据库连接对象
    private HttpServletRequest request;//request对象

    //构造方法
    public ClassInfoBean(HttpServletRequest request) {
        this.request = request;
        db = new DBSource(request);
    }

    //查询
    public JSONArray queryRec() {
        String str = "";
        return null;
    }

    //get和set方法
    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
