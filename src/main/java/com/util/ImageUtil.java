package com.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class ImageUtil {

    //1.定义变量保存生成后的验证码字符串
    static  String code="";
    //2.生成验证码
    public static String createcode(){
        code="";
        String a="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        for (int i = 0; i < 4; i++) {
            int index=(int)(Math.random()*62);
            char b=a.charAt(index);
            code=code+b;
        }
        return code;
    }
    //查看已经生成的验证码
    public   static  String getCode(){
        return code;
    }


    //3.生成图片
    public  static  BufferedImage createimage(){
        BufferedImage bi=new BufferedImage(100,30,BufferedImage.TYPE_INT_RGB);
        //1.得到一个画布
        Graphics g= bi.getGraphics();
        //2.添加背景颜色
        g.setColor(Color.magenta);
        g.fillRect(0,0,100,30);

        //3.添加干扰线
        for (int i = 0; i < 30; i++) {
            Random r=new Random();
            int red=r.nextInt(256);
            int green=r.nextInt(256);
            int blue=r.nextInt(256);
            Color c=new Color(red,green,blue);
            g.setColor(c);
            int x1=r.nextInt(101);
            int y1=r.nextInt(31);
            int x2=r.nextInt(101);
            int y2=r.nextInt(31);
            //g.drawLine(x1,y1,x2,y2);
            g.drawOval(x1,y1,x2,y2);
        }


        //3.添加文字
        g.setColor(Color.white);
        g.setFont(new Font("宋体",Font.BOLD,25));

        String str=getCode();
        //4.将文字填充到画板中
        g.drawString(str,10,25);

        //5.关闭画布
        g.dispose();
        return bi;
    }








}
