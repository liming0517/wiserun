package com.pantech.develop;
/*
@date 2019.09.06
@author 李明
模块:
说明:练手使用
重要及特殊方法：
*/


import com.pantech.base.common.db.DBSource;
import com.pantech.base.common.exception.WrongSQLException;
import com.pantech.base.common.tools.MyTools;
import net.sf.json.JSONArray;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Vector;


public class GradeInfoBean {

    //entity属性
    private Integer userid; //
    private Integer gradeCode;
    private String gradeName;
    private String gradeYear;
    private String MSG;

    //创建连接池对象
    DBSource db = null;
    HttpServletRequest request = null;

    //构造函数
    public GradeInfoBean(HttpServletRequest request) {
        this.request = request;
        this.db = new DBSource(request);
        this.initialData();
    }

    //初始化变量
    public void initialData() {
        this.userid = 0;
        this.gradeCode = 0;
        this.gradeName = "";
        this.gradeYear = "";
        this.MSG = "";
    }

    //查询年级信息
    public JSONArray queryRec(Integer gradeCode, String gradeName) throws SQLException {
        JSONArray js = null;//创建结果集
        String sql = "";//创建查询sql
        sql = "SELECT gradeCode,gradeName,gradeYear FROM dbo.grade where 1=1 ";

        //判断用户是否填写
        if (!gradeCode.equals(0)) {
            sql += " and gradeCode like '%" + gradeCode + "%'";
        }

        if (!gradeName.equals("")) {
            sql += " and gradeName like '%" + MyTools.fixSql(gradeName) + "%'";
        }

        js = db.getConttexJONSArr(sql);
       // db.getLimitedContextJSON(sql);
        return js;
    }

    //添加年级信息
    public void addRec() throws SQLException, UnsupportedEncodingException {
        this.setUserid((int) (Math.random() * 1000));
        String sql = "";

        //校验gradeCode是否存在
        sql = "SELECT COUNT(*) FROM grade WHERE gradeCode ='" + this.getGradeCode() + "'";
        try {
            if (db.getResultFromDB(sql)) {
                this.setMSG("年级代码已经存在,请勿重复添加");
            } else {
                //执行插入操作
                sql = "   INSERT INTO grade(userid,gradeCode,gradeName,gradeYear) VALUES(" +
                        "'" + this.getUserid() + "'," +
                        "'" + this.getGradeCode() + "'," +
                        "'" + MyTools.fixSql(this.getGradeName()) + "'," +
                        "'" + MyTools.fixSql(MyTools.StrFiltr(this.getGradeYear())) + "')";
                //db.executeInsertOrUpdateTransaction(<Vector>);//批量sql处理
                if (db.executeInsertOrUpdate(sql)) {
                    this.setMSG("保存成功");
                } else {
                    this.setMSG("保存失败");
                }
            }
        } catch (WrongSQLException e) {
            e.printStackTrace();
        }
    }

    //修改学期列表
    public void updateRec() throws WrongSQLException, SQLException {
        String sql = "";
        //修改的gradeName和gradeYear不允许为空
        if(this.getGradeName().equals("")||this.getGradeYear().equals(0)){
            this.setMSG("修改的年级名称或年份不允许为空");
            return;
        }
        //修改的年级不存在
        sql ="SELECT COUNT(*) FROM grade WHERE gradeCode = '"+this.getGradeCode()+"';";
        if(!db.getResultFromDB(sql)){
            this.setMSG("要修改的信息不存在");
            return;
        }else{
            //修改的年级名称不允许重复
            sql = " SELECT COUNT(*) FROM grade WHERE gradeName = '" + MyTools.fixSql(this.getGradeName()) + "';";
            if (db.getResultFromDB(sql)) {
                //如果修改的年级名称已经存在，返回修改失败
                this.setMSG("修改失败，修改的名称已存在");
                return;
            } else {

                //校验通过开始修改
                sql = "UPDATE grade SET gradeName='" +
                        MyTools.fixSql(this.getGradeName()) + "',gradeYear='" +
                        MyTools.fixSql(this.getGradeYear()) + "' WHERE gradeCode='" +
                        this.getGradeCode() + "'";
                //执行sql
                if(db.executeInsertOrUpdate(sql)){
                    //成功
                    this.setMSG("保存成功");
                }else {
                    this.setMSG("修改失败，出现一个未知错误");
                }
            }
        }
    }

    //删除年级信息
    public void delRec() throws WrongSQLException, SQLException {
        String sql = "";//定义sql

        //首先校验数据库中是否存在数据
        sql = "SELECT COUNT(*) FROM grade where gradeCode='" + this.gradeCode + "'";
        if (!db.getResultFromDB(sql)) {
            this.setMSG("要删除的记录不存在");
            return;
        } else {
            //执行删除
            sql = "DELETE FROM grade where gradeCode='" + this.gradeCode + "'";
            //删除成功
            if (db.executeInsertOrUpdate(sql)) {
                this.setMSG("删除成功");
            } else {
                //删除失败
                this.setMSG("删除失败，出现一个未知错误");
            }
        }
    }


    //get 和 set 方法
    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getGradeCode() {
        return gradeCode;
    }

    public void setGradeCode(Integer gradeCode) {
        this.gradeCode = gradeCode;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    public String getGradeYear() {
        return gradeYear;
    }

    public void setGradeYear(String gradeYear) {
        this.gradeYear = gradeYear;
    }

    public String getMSG() {
        return MSG;
    }

    public void setMSG(String MSG) {
        this.MSG = MSG;
    }


}
