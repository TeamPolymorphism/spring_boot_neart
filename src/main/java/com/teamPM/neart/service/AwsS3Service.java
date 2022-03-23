package com.teamPM.neart.service;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.util.IOUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class AwsS3Service {

	// upload, delete, createFileName

	@Value("${cloud.aws.credentials.access-key}")
	private String accessKey;
	@Value("${cloud.aws.credentials.secret-key}")
	private String secretKey;
	@Value("${cloud.aws.s3.bucket}")
	private String bucket;
	@Value("${cloud.aws.s3.region}")
	private Regions region;
	private AmazonS3 s3Client;

	public void clientBuild() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials))
				.withRegion(region).build();
	}

	public String upload(MultipartFile file) throws IOException { // 파일 정보 읽기
		this.clientBuild();
		String filePath = UUID.randomUUID().toString(); //UUID 파일명 중복방지 , uuid:  네트워크 상에서 고유성이 보장되는 id를 만들기 위한 표준 규약
		
		try {

			//inputstream의 byte배열로 변환 > 모든 데이터를 바이트배열로 가져온다
			//텍스트 데이터를 인쇄하기 위해 String 생성자에 추가로 전달할 수 있는 바이트 배열을 반환
			byte[] bytes = IOUtils.toByteArray(file.getInputStream()); // AmazonS3라이브러리 활용하여 업로드

			ObjectMetadata metaData = new ObjectMetadata(); //로컬에 파일 저장않고 s3에 업로드
			metaData.setContentLength(bytes.length);
			metaData.setContentType(MediaType.IMAGE_PNG_VALUE); //HTTP 헤더 부분의 Content-Type을 정의

			// object 업로드
			s3Client.putObject(new PutObjectRequest(bucket, filePath, new ByteArrayInputStream(bytes), metaData));
			log.info("+++++++++++++ UPLOAD || bucket : " +bucket + " || fileName: "+ filePath);
			return s3Client.getUrl(bucket, filePath).toString();
		} catch (IOException e) {
			return "IOException";
		} catch (AmazonServiceException e) {
			System.err.println(e);
			return "AmazonException";
		}
	}

	public String delete(String filePath) { // Client가 가진 파일명을 가져와서 해당 파일명과 일치하는 것 삭제
		try {
			this.clientBuild();
			String [] splitFilePath = filePath.split("/");
			String fileName = splitFilePath[splitFilePath.length - 1];
			s3Client.deleteObject(new DeleteObjectRequest(bucket, fileName));
			log.info("+++++++++++++ DELETE || bucket : " +bucket + " || fileName: "+ filePath);
			return "done";
			
		} catch (AmazonServiceException e) {
			System.err.println(e.getErrorMessage());
			return "AmazonException";
		}
	}

}