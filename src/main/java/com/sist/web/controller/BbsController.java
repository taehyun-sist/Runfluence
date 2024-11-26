package com.sist.web.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;

import com.sist.common.model.FileData;
import com.sist.common.util.FileUtil;
import com.sist.common.util.StringUtil;

@Controller
public class BbsController {
	public static Logger logger = LoggerFactory.getLogger(BbsController.class);
	
	private static final int COM_PAGE_COUNT = 5;
	private static final int COM_LIST_COUNT = 10;
	private static final int BBS_PAGE_COUNT = 5;
	
	public static List<FileData> moveTempImage(String bbsContent, String tempDirectory, String actualDirectory) {
	    String imgTagPattern = "<img[^>]+src=\"/resources/bbs/temp/([^\"]+)\"[^>]*alt=\"([^\"]+)\"";
	    Pattern pattern = Pattern.compile(imgTagPattern);
	    Matcher matcher = pattern.matcher(bbsContent);

	    List<FileData> imageDataList = null;

	    if (matcher.find()) {
	        imageDataList = new ArrayList<>(); 

	        do {
	            String tempImageName = matcher.group(1);  
	            String originalImageName = matcher.group(2); 

	            File tempFile = new File(tempDirectory + FileUtil.getFileSeparator() + tempImageName);
	            File actualFile = new File(actualDirectory + FileUtil.getFileSeparator() + tempImageName);

	            if (tempFile.exists() && tempFile.renameTo(actualFile)) {
	                FileData imageData = new FileData();

	                imageData.setFileOrgName(originalImageName);  
	                imageData.setFileName(actualFile.getName()); 
	                imageData.setFileSize(actualFile.length());  
	                imageData.setFilePath(actualFile.getAbsolutePath());  

	                String strFileExt = FileUtil.getFileExtension(imageData.getFileOrgName());
	                if (!StringUtil.isEmpty(strFileExt)) {
	                    imageData.setFileExt(strFileExt);  // 파일 확장자
	                }

	                imageDataList.add(imageData);
	            }

	        } while (matcher.find());
	    }

	    return (imageDataList != null && !imageDataList.isEmpty()) ? imageDataList : null;
	}
}