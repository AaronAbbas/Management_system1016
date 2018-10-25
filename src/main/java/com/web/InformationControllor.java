package com.web;

import com.bean.Information;
import com.github.pagehelper.PageInfo;
import com.service.InformationService;
import com.service.InfotypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class InformationControllor {

    @Autowired
    private InformationService informationService;
    @Autowired
    private InfotypeService infotypeService;


    //查询全部
    @RequestMapping("/book/selectall")
    public String selectall(String informationname,Integer typeid,
                         @RequestParam(value="index", defaultValue = "1") int index,
                         ModelMap map,
                         @RequestParam(value="size",defaultValue = "3") int size){
        PageInfo pageInfo=informationService.selectall(informationname,typeid,index,size);
        map.put("pi",pageInfo);
        map.put("index",index);
        map.put("size",size);
        map.put("typeid",typeid);
        map.put("informationname",informationname);
        return "book/list-ziliao";
    }

    //添加
    @RequestMapping("/book/insertbook")
    public String insertbook(Information information,
                             MultipartFile myfile,
                             HttpServletRequest request){
        String path=request.getRealPath("/uploadimage");
        try {
            myfile.transferTo(new File(path+"/"+myfile.getOriginalFilename()));//复制
        } catch (IOException e) {
            e.printStackTrace();
        }
        information.setUploadpath(path+"/"+myfile.getOriginalFilename());
        informationService.insertSelective(information);
        return "redirect:/book/selectall";
    }


    //上传
    @RequestMapping("/book/fileupload")
    public String upload(MultipartFile myfile, HttpServletRequest request) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        // uploads文件夹位置
        String rootPath = request.getSession().getServletContext().getRealPath("resource/uploads/");
        // 原始名称
        String originalFileName = myfile.getOriginalFilename();
        // 新文件名
        String newFileName = "sliver" + res + originalFileName.substring(originalFileName.lastIndexOf("."));
        // 创建年月文件夹
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR) + File.separator + (date.get(Calendar.MONTH)+1));

        // 新文件
        File newFile = new File(rootPath + File.separator + dateDirs + File.separator + newFileName);
        // 判断目标文件所在目录是否存在
        if( !newFile.getParentFile().exists()) {
            // 如果目标文件所在的目录不存在，则创建父目录
            newFile.getParentFile().mkdirs();
        }
        System.out.println(newFile);
        // 将内存中的数据写入磁盘
        try {
            myfile.transferTo(newFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 完整的url
        String fileUrl = date.get(Calendar.YEAR) + "/" + (date.get(Calendar.MONTH)+1) + "/" + newFileName;
        return  fileUrl;
    }



    /*
    查询资料类型
    */
    @RequestMapping("/book/gettype")
    public String gettype(ModelMap map){
        List list = infotypeService.gettype();
        map.put("dlist",list);
        return "/book/add";
    }

    /*
    查询单个
     */
    @RequestMapping("/book/getbyid")
    public String getbyid(ModelMap map, Information information) {
        Information information1 = informationService.getallbyid(information.getInformationid());
        List list = infotypeService.gettype();
        map.put("dlist", list);
        map.put("inf", information1);
        return "/book/info-ziliao";
    }


    //修改
    @RequestMapping("/book/updateinf")
    public void updateclass(HttpServletResponse resp, HttpServletRequest request, ModelMap map, Information information,MultipartFile myfile){
        int k = informationService.updateByPrimaryKeySelective(information);
        String path=request.getRealPath("/uploadimage");
        try {
            myfile.transferTo(new File(path+"/"+myfile.getOriginalFilename()));//复制
        } catch (IOException e) {
            e.printStackTrace();
        }
        information.setUploadpath(path+"/"+myfile.getOriginalFilename());
        resp.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out=resp.getWriter();
            if (k>0) {
                out.write("<script>alert('修改成功');location.href='/book/selectall'</script>");
            }else{
                out.write("<script>alert('修改失败');top.location.href='/Educational/class/selectbyid'</script>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //根据id查询
    @RequestMapping("/book/selectid")
    public String selectbyid(ModelMap map, Information information){
        Information information1 = informationService.getallbyid(information.getInformationid());
        List list = infotypeService.gettype();
        map.put("dlist", list);
        map.put("inf",information1);
        return "book/edit-ziliao";
    }
}
