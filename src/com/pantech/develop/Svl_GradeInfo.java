package com.pantech.develop;


import com.pantech.base.common.exception.WrongSQLException;
import com.pantech.base.common.tools.JsonUtil;
import com.pantech.base.common.tools.MyTools;
import net.sf.json.JSONArray;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

public class Svl_GradeInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("开始访问/Svl_GradeInfo");
        //设置字符编码为utf-8
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=UTF-8");

        //获取前台参数
        String active = MyTools.StrFiltr(req.getParameter("active"));//active值

        GradeInfoBean bean = new GradeInfoBean(req);//创建对象实体
        JSONArray js = null;
        //js.toString();

        //初始化实体属性
        this.getFormData(req, bean);

        //通过active值处理业务逻辑
        //acive为空,提交错误
        if ("".equals(active)) {
            bean.setMSG("提交请求错误");
        }

        //初始化加载学期列表
        if ("initData".equals(active)) {
            System.out.println("开始初始化加载学期列表");

            //查询学期列表
            try {
                js = bean.queryRec(bean.getGradeCode(), bean.getGradeName());
            /*    js = JsonUtil.addJsonParams(js, "listData", "{\"rows\":" + js.toString() + "}");*/
                resp.getWriter().write(js.toString());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        //查询学期列表
        if("query".equals(active)){
            System.out.println("开始查询学期列表");

            //根据gradeCode或者GradeName查询学期列表
            try {
               js=bean.queryRec(bean.getGradeCode(),bean.getGradeName());
               js=JsonUtil.addJsonParams(js,"rows",js.toString());

               js = JsonUtil.addJsonParams(js, "listData", "{\"rows\":" + js.toString() + "}");
               resp.getWriter().write(js.toString());

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        //添加学期列表
        if("add".equals(active)){
            System.out.println("开始添加学期列表");
            try {
                bean.addRec();
                js = JsonUtil.addJsonParams(js,"MSG",bean.getMSG());
                resp.getWriter().write(js.toString());
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        //修改学期列表
        if("update".equals(active)){
            System.out.println("开始修改学期列表");
            //执行修改
            try {
                bean.updateRec();
            } catch (Exception e) {
                e.printStackTrace();
                resp.getWriter().write("出现一个未知错误，请联系管理员");
            }

            //返回报文
            js=JsonUtil.addJsonParams(js,"MSG",bean.getMSG());
            resp.getWriter().write(js.toString());
        }

        //删除学期列表
        if("del".equals(active)){
            System.out.println("开始删除学期列表");
            //执行删除
            try {
                bean.delRec();
            } catch (Exception e) {
                e.printStackTrace();
                resp.getWriter().write("出现一个未知错误，请联系管理员");
            }

            //删除成功，发送msg通知
            js=JsonUtil.addJsonParams(js,"MSG",bean.getMSG());
            resp.getWriter().write(js.toString());
        }




    }

    //从界面获取参数
    private void getFormData(HttpServletRequest request, GradeInfoBean bean) throws UnsupportedEncodingException {
        System.out.println("收到的gradeName="+request.getParameter("gradeName"));
        System.out.println("收到的gradeCode="+request.getParameter("gradeCode"));
        System.out.println("收到的gradeYear="+request.getParameter("gradeYear"));
//        String gradeName = null;
//        //tomcat7设置字符集，放止乱码
//        if (request.getParameter("gradeName") != null) {
//            gradeName = new String(request.getParameter("gradeName").getBytes("ISO-8859-1"), "UTF-8");
//        }
//        System.out.println("接收到的gradeName是："+gradeName);

        bean.setGradeCode(MyTools.parseInt(request.getParameter("gradeCode"))); //年级代码
        bean.setGradeName(MyTools.StrFiltr(request.getParameter("gradeName"))); //年级名称
        bean.setGradeYear(MyTools.StrFiltr(request.getParameter("gradeYear"))); //所属年份


    }
}
