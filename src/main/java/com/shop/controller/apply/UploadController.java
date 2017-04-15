package com.shop.controller.apply;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller 
@RequestMapping("/upload")
public class UploadController {
 
	private Logger logger = LoggerFactory.getLogger(this.getClass());
 
    private static final HashMap<String, String> TypeMap = new HashMap<String, String>();
    //设置文件允许上传的类型
    static {
        TypeMap.put("image", "gif,jpg,jpeg,png,bmp");
        TypeMap.put("flash", "swf,flv");
        TypeMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
        TypeMap.put("file", "doc,docx,xls,xlsx,ppt,pptx,htm,html,txt,dwg,pdf");
    }
     
    // 设置文件上传大小
    public static long fileSize = 3 * 1024 * 1024;
    /**
     * 文件上传
     *
     * @param file
     * @param request
     * @return message: -1 没有文件上传 0 上传成功 1 上传失败 2 文件超过上传大小 3 文件格式错误 4 上传文件路径非法 5 上传目录没有写权限
     *    
     *      @RequestParam("file") CommonsMultipartFile file,
            @RequestParam("filePart") String filePart,
     *
     */
    @RequestMapping(value = "/imageUpload", method = RequestMethod.POST)
    public void imageUpload(
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session) {
    		String filePart = request.getParameter("filePart");
    		System.out.println(filePart);
	    	MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
	    	Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();    
	    	String fileName = null;   
	    	String fileType = null;
	    	MultipartFile mf = null;
	    	
	    	for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) { 
    		//获取需上传文件   
    		mf = entity.getValue();  
    		//获取原文件名 
    		fileName = mf.getOriginalFilename();
    		//获取文件后罪名
    		fileType = fileName.substring(mf.getOriginalFilename().lastIndexOf(".")+1);
    	}
    	
	    logger.info("file name is :" + fileName);
        if (!mf.isEmpty()) {
         
            //当文件超过设置的大小时，则不运行上传
            if (mf.getSize() > fileSize) {
                backInfo(response, false, 2, "");
                return;
            }
            //获取文件名后缀
            String fileSuffix = fileType;
                    
             
            //判断该类型的文件是否在允许上传的文件类型内
            if (!Arrays.asList(TypeMap.get("image").split(",")).contains(fileSuffix)) {
                backInfo(response, false, 3, "");
                return;
            }
            if (!ServletFileUpload.isMultipartContent(request)) {
                backInfo(response, false, -1, "");
                return;
            }
            // 检查上传文件的目录 清除上次上传进度信息  
            String curProjectPath = session.getServletContext().getRealPath("/");  
            String saveDirectoryPath = curProjectPath + "/" + "uploadFiles";  
            //File saveDirectory = new File(saveDirectoryPath); 
            File uploadDir = new File(saveDirectoryPath);
            logger.debug("Project real path [" + uploadDir.getAbsolutePath() + "]"); 
            if (!uploadDir.isDirectory()) {
                if (!uploadDir.mkdir()) {
                    backInfo(response, false, 4, "");
                    return;
                }
            }
            
            // 是否有上传的权限
            if (!uploadDir.canWrite()) {
                backInfo(response, false, 5, "");
                return;
            }
             
            //新文件名: 模块+时间戳+原始名
            String newname = "";
            if(null != filePart){
                newname += filePart;//对应模块上传的文件名前缀
            }
             newname += System.currentTimeMillis()+fileName;//+"." + fileSuffix;
 
            try {
 
                //创建文件
                File saveFile = new File(uploadDir, newname);
                //保存文件
                mf.transferTo(saveFile);
                //FileTranser.saveFielByFileName(file, uploadPath, newname);
                backInfo(response, true, 0, newname);
            } catch (Exception e) {
            	logger.error(e.getMessage(), e);
                backInfo(response, false, 1, "");
                return;
            }
        } else {
            backInfo(response, false, -1, "");
            return;
        }
 
    }
    /**
     * 返回json信息
     * @param response
     * @param flag
     * @param message
     * @param fileName
     */
    private void backInfo(HttpServletResponse response, boolean flag, int message,
            String fileName) {
        String json  = "";
        //json=fileName;
        if (flag) {
            json = "{ \"status\": \"success";
        } else {
            json = "{ \"status\": \"error";
        }
        json += "\",\"fileName\": \"" + fileName + "\",\"message\": \"" + message + "\"}";
        try {
            //response.setContentType("text/javascript");
            response.setContentType("text/html; charset=utf-8");
            response.getWriter().print(json);
            logger.info(json.toString());
        } catch (IOException e) {
        	logger.error(e.getMessage(), e);
        }
    }
 
}