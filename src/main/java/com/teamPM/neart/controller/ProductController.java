package com.teamPM.neart.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.page.PageVO;
import com.teamPM.neart.service.AwsS3Service;
import com.teamPM.neart.service.ProductService;
import com.teamPM.neart.service.StorageFileNotFoundException;
import com.teamPM.neart.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController //restcontroller 일떄 string말고 modelandview 사용, 비동기를 위해 리로드없이 업데이트
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private AwsS3Service awsS3Service;

	// 페이징 + 상품목록
	@GetMapping("/listProduct")
	public ModelAndView listProduct(ModelAndView model) {
		log.info("++++++++++ paging----listProduct");
		//log.info("Criteria " + cri);

		model.setViewName("product/listProduct"); //return할때 들어가는 주소 
		model.addObject("productBoard", productService.getProductList()); //model.addattribute와 같음 
		//int total = productService.getTotalCount();

		//log.info("total " + total);

		//model.addObject("pageMaker", new PageVO(cri, total));

		return model;
	}

	// 작품 상세
	@GetMapping("/detailProduct")
	public ModelAndView productDetail(ProductVO productVO, ModelAndView model) {

		log.info("++++++++++ Controller----detailProduct");
		model.setViewName("product/detailProduct");
		int productid = productVO.getProductid();
		model.addObject("detailProduct", productService.detailProduct(productid));

		return model;
	}
	

	
	// 작품등록 화면으로 이동
	@GetMapping("/insertProduct")
	public ModelAndView productWrite(ModelAndView model) {
		log.info("++++++++++++ controller----insertProduct ++++++++++");
		model.setViewName( "/product/insertProduct");
		return model;
	}
	// 작품등록 화면
	@PostMapping("/upload")
	public ModelAndView upload(@RequestPart(required = false) MultipartFile file, //RequestPart는 @RequestParam POST 데이타 포함된 인자의 이름을 가지고 접근할 수 있다.
								RedirectAttributes redirectAttributes,
								@ModelAttribute ProductVO productVO,
								ModelAndView model) throws IOException  {
		log.info("++++++++++++ controller----insertProduct-------upload ++++++++++++");	
		log.info("================ MultipartFile: " + file + " :: ProductVO"+ productVO.getFile());
		
		/**
	     * Amazon S3에 이미지 업로드
	     * @return 성공 시 업로드 된 파일의 파일명 리스트 반환
	     */
		String uri = awsS3Service.upload(file); //s3에 파일 업로드
		log.info("++++++++++++ controller----s3file----upload ++++++++++++");
		
		
    	//db넣어주는 애들
    	productVO.setFilePath(uri); //db에 uri넣게 함
    	productVO.setImgtype("product"); // 카테고리 선정, null값 방지
    	log.info("++++++++++++ controller----db----file update---------");
    	
    	redirectAttributes.addFlashAttribute("message",
				"You successfully uploaded " + file.getOriginalFilename() + "!"); //view에 메세지 뿌려주기
		
			
		productService.insertProduct(productVO);
		model.setViewName("redirect:/listProduct");

		return model; // 완료 후 목록으로 이동
	}

	

	// 작품수정 진행
	@GetMapping("/modifyProduct")
	public ModelAndView productModify(ProductVO productVO, ModelAndView model) {
		log.info("++++++++++++++ controller----modifyProduct----Start");
		int productid = productVO.getProductid();
		model.setViewName("/product/modifyProduct");
		model.addObject("modifyProduct", productService.detailProduct(productid));

		return model;
	}

	@PostMapping("/doModifyProduct")
	public ModelAndView doModifyProduct(ProductVO productVO, ModelAndView model) {
		log.info("++++++++++++++ controller----modifyProduct----Finish");
		productService.modifyProduct(productVO);
		model.setViewName("redirect:/listProduct");

		return model;
	}
	
	// 신상품
	@GetMapping("/newProduct")
	public ModelAndView newProduct(ModelAndView model) {
		log.info("++++++++++ paging----newProduct");

		model.setViewName("product/newProduct"); 
		model.addObject("productNew", productService.newProduct()); 
		

		return model;
	}

	//베스트상품
	@GetMapping("/bestProduct")
	public ModelAndView bestProduct(ModelAndView model) {
		log.info("++++++++++ paging----bestProduct");

		model.setViewName("product/bestProduct");  
		model.addObject("productBest", productService.bestProduct());
		

		return model;
	}
	
	// ArtPoster
	@GetMapping("/artPoster")
	public ModelAndView artPoster(ModelAndView model) {
		log.info("++++++++++ paging----artPoster");
		model.setViewName("product/artPoster"); 
		model.addObject("artPoster", productService.artPoster()); 
		return model;
	}

	//FabricArt
	@GetMapping("/fabricArt")
	public ModelAndView fabricArt(ModelAndView model) {
		log.info("++++++++++ paging----FabricArt");

		model.setViewName("product/fabricArt");  
		model.addObject("fabricArt", productService.fabricArt());
		

		return model;
	}
	
	
	// Kids
	@GetMapping("/kids")
	public ModelAndView kids(ModelAndView model) {
		log.info("++++++++++ paging----Kids");

		model.setViewName("product/kids");  
		model.addObject("kids", productService.kids());
		

		return model;
	}
	
	
	@ExceptionHandler(StorageFileNotFoundException.class) //에러났을때 타는 것 같음
	public ResponseEntity<?> handleStorageFileNotFound(StorageFileNotFoundException exc) {
		return ResponseEntity.notFound().build();
	}


}