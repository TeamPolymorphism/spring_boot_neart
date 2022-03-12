package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.teamPM.neart.service.AwsS3Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/product")
public class AwsS3Controller {
	
	@Autowired
	private AwsS3Service awsS3Service;

    /**
     * Amazon S3에 이미지 업로드
     * @return 성공 시 업로드 된 파일의 파일명 리스트 반환
     */
    @PostMapping("/upload")
    public String upload(@RequestPart MultipartFile file){
        return awsS3Service.upload(file);
    }

    /**
     * Amazon S3에 이미지 업로드 된 파일을 삭제
     */
    @DeleteMapping("/delete")
    public String delete(@RequestPart String fileName){
        return awsS3Service.delete(fileName);
    }

}