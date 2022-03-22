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

	public String upload(MultipartFile file) { // 파일 정보 읽기
		this.clientBuild();
		String filename = UUID.randomUUID().toString();
		try {

			byte[] bytes = IOUtils.toByteArray(file.getInputStream()); // AmazonS3라이브러리 활용하여 업로드

			ObjectMetadata metaData = new ObjectMetadata();
			metaData.setContentLength(bytes.length);
			metaData.setContentType(MediaType.IMAGE_PNG_VALUE);

			s3Client.putObject(new PutObjectRequest(bucket, filename, new ByteArrayInputStream(bytes), metaData));
			return s3Client.getUrl(bucket, filename).toString();
		} catch (IOException e) {
			return "IOException";
		} catch (AmazonServiceException e) {
			System.err.println(e);
			return "AmazonException";
		}
	}

	public String delete(String fileName) { // Client가 가진 파일명을 가져와서 해당 파일명과 일치하는 것 삭제
		try {
			this.clientBuild();
			s3Client.deleteObject(new DeleteObjectRequest(bucket, fileName));
			return "done";
		} catch (AmazonServiceException e) {
			System.err.println(e.getErrorMessage());
			return "AmazonException";
		}
	}
}