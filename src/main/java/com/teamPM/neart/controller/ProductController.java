package com.teamPM.neart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.teamPM.neart.page.Criteria;
import com.teamPM.neart.page.PageVO;
import com.teamPM.neart.service.AwsS3Service;
import com.teamPM.neart.service.ProductService;
import com.teamPM.neart.vo.CartVO;
import com.teamPM.neart.vo.MemberVO;
import com.teamPM.neart.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	private AwsS3Service awsS3Service;
	
	


	// 페이징 + 상품목록
	@GetMapping("/product/listProduct")
	public String listProduct(Criteria cri, Model model) {
		log.info("----paging----listProduct");
		log.info("Criteria " + cri);

		model.addAttribute("productBoard", productService.getProductList(cri));
		int total = productService.getTotalCount();

		log.info("total " + total);

		model.addAttribute("pageMaker", new PageVO(cri, total));

		return "product/listProduct";
	}

	// 관리자 상품상세
	@GetMapping("/product/detailProduct")
	public String productDetail(ProductVO productVO, Model model) {

		log.info("----Controller----detailProduct");
		int productid = productVO.getProductid();
		model.addAttribute("detailProduct", productService.detailProduct(productid));

		return "product/detailProduct";
	}

	/*
	 * 회원 상품상세
	 * 
	 * @GetMapping("/product/userDetailProduct") public String
	 * userDetailProduct(ProductVO productVO,Model model) {
	 * 
	 * log.info("----Controller----productDetail"); log.info("ProductVO" +
	 * productVO); int productid = productVO.getProductid();
	 * model.addAttribute("userDetailProduct",
	 * productService.detailProduct(productid));
	 * 
	 * return "/product/userDetailProduct"; }
	 */

	// 작품등록 진행
	@GetMapping("/product/insertProduct")
	public String productWrite() {
		log.info("----insertProduct----Start");
		return "/product/insertProduct";
	}

	@PostMapping("/product/insertProductFinish") // 등록 완료
	public String productWriteComplete(ProductVO productVO) {
		log.info("----insertProduct----Finish");
		productService.insertProduct(productVO);

		return "redirect:/product/listProduct"; // 완료 후 목록으로 이동
	}

	@GetMapping("/product/deleteProduct")
	public String deleteProduct(ProductVO productVO, Model model) {
		log.info("----deleteProduct");
		productService.deleteProduct(productVO.getProductid());
		return "redirect:/product/listProduct";
	}

	// 작품수정 진행
	@GetMapping("/product/modifyProduct")
	public String productModify(ProductVO productVO, Model model) {
		log.info("----modifyProduct----Start");
		int productid = productVO.getProductid();
		model.addAttribute("modifyProduct", productService.detailProduct(productid));

		return "/product/modifyProduct";
	}

	@PostMapping("/product/modifyProductFinish")
	public String productModifyFinish(ProductVO productVO, Model model) {
		log.info("----modifyProduct----Finish");
		log.info("나와라ㅏㅏㅏㅏㅏㅏㅏㅏ");
		productService.modifyProduct(productVO);

		return "redirect:/product/listProduct";
	}
	
	

}