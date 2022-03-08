package com.teamPM.neart.service;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.util.IOUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class S3Service {
	@Value("${cloud.aws.credentials.access-key}")
	private String accessKey;
	@Value("${cloud.aws.credentials.secret-key}")
	private String secretKey;
	@Value("${cloud.aws.s3.bucket}")
	private String bucket;
	@Value("${cloud.aws.s3.region}") // .static 있고 없고 실험
	private Regions region;
	private AmazonS3 s3Client;

	public void clientBuild() {
		AWSCredentials credentials = new BasicAWSCredentials(this.accessKey, this.secretKey);// 자격증명 객체를 얻음
		s3Client = AmazonS3ClientBuilder // 이를 통해 S3Client 가져옴
				.standard()
				.withCredentials(new AWSStaticCredentialsProvider(credentials)) // 자격증명을 통해 S3 Client를 가져옴
				.withRegion(this.region)
				.build();
	}

	// MultipartFile 인터페이스를 통해 HTTP multipart요청 처리
	public String uploadFile(MultipartFile file){
		this.clientBuild();
		String filename = UUID.randomUUID().toString(); // s3업로드
		try {

			byte[] bytes = IOUtils.toByteArray(file.getInputStream());

			ObjectMetadata metaData = new ObjectMetadata();
			metaData.setContentLength(bytes.length);
			metaData.setContentType(MediaType.IMAGE_PNG_VALUE);

			// 업로드를 위해 사용되는 함수 AWS SDK 참고
			s3Client.putObject(new PutObjectRequest(bucket, filename, new ByteArrayInputStream(bytes), metaData)
					.withCannedAcl(CannedAccessControlList.PublicRead));// 외부에 공개할 이미지로 public read 권한 추가
			return s3Client.getUrl(bucket, filename).toString(); // 업로드 후 url을 db에 저장토록 컨트롤러에 url반환
		} catch (IOException e) {
			return "IOException";
		} catch (AmazonServiceException e) {
			System.err.println(e);
			return "AmazonException";
		}
	}

	public String deleteFile(String fileName) {
		try {
			this.clientBuild();
			s3Client.deleteObject(bucket, fileName);
			return "done";
		} catch (AmazonServiceException e) {
			System.err.println(e.getErrorMessage());
			return "AmazonException";
		}
	}
	
	private String getFileExtension(String fileName) { // file 형식이 잘못된 경우를 확인하기 위해 만들어진 로직이며, 파일 타입과 상관없이 업로드할 수 있게 하기 위해 .의 존재 유무만 판단
	        try {
	            return fileName.substring(fileName.lastIndexOf("."));
	        } catch (StringIndexOutOfBoundsException e) {
	            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "잘못된 형식의 파일(" + fileName + ") 입니다.");
	        }
	    }

}