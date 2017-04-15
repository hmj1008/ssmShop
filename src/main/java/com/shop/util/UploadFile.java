package com.shop.util;

import org.springframework.web.multipart.MultipartFile;

public interface UploadFile {

	String uploadFile(MultipartFile fileImage);

}