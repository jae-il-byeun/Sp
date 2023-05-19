package kr.kh.project.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.dao.ProductDAO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.service.ProductService;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;
import kr.kh.project.utils.UploadFileUtils;
import kr.kh.project.vo.ProductFileVO;
import kr.kh.project.vo.ProductRoomFileVO;
import kr.kh.project.vo.LocationVO;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDAO productDao;
	
	String uploadPath = "D:\\uploadfiles";

	@Override
	public boolean productInsert(ProductVO params) {
		//필수값 체크. 빈값이면 안되는 항목.
		if(params == null || params.getProduct_name().isEmpty() || params.getProduct_type().isEmpty() || params.getProduct_rooms().length == 0)
			return false;
		
		//DataBase에 상품정보를 넣고 상품번호를 리턴받자.
		Integer product_num = productDao.insertProduct(params).getProduct_num();
		//이미지 첨부가 있으면
		if(product_num != null) {
			if(params.getProduct_images().length > 0)
			{
				//서버에 업로드하고 DB에도 추가해주자.
				uploadFiles(params.getProduct_images(), product_num);			
			}
			
			//객실데이터를 한개씩 반복돌면서 처리하자.
			for(ProductRoomsVO room : params.getProduct_rooms()) {
				room.setProduct_num(product_num);
				
				//DataBase에 객실정보를 넣고 객실번호 리턴.			
				Integer r_num = productDao.insertProductRooms(room).getNum();
				//객실 이미지파일이 있으면.
				if(r_num != null && room.getFiles().length > 0)
				{
					//파일 업로드.
					uploadFiles(room.getFiles(), product_num, r_num);
				}
			}
		}
		else {
			return false;
		}
		
		return true;
	}
	
	private void uploadFiles(MultipartFile [] files,Integer product_num) {
		uploadFiles(files, product_num, null);
	}

	private void uploadFiles(MultipartFile [] files,Integer product_num, Integer r_num) {
		//첨부파일 없을 시
				if(files == null || files.length == 0 || product_num == null)
					return ;
				//반복문
				for(MultipartFile file : files) {
					if(file == null || file.getOriginalFilename().length() == 0)
						continue;
					String fileName = "";
					//첨부파일 서버에 업로드
					try {
						fileName = UploadFileUtils.uploadFile(uploadPath,
								 file.getOriginalFilename(), //파일명
								 file.getBytes()); //실제 파일 데이터
					} catch(Exception e) {
						e.printStackTrace();
					}
					
					
					if(r_num == null) {
						//첨부파일 객체를 생성
						ProductFileVO fileVo = new ProductFileVO(file.getOriginalFilename(), fileName, uploadPath, file.getSize()+"", product_num);
						//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
						productDao.insertFile(fileVo);
					}
					else {
						//첨부파일 객체를 생성
						ProductRoomFileVO fileVo = new ProductRoomFileVO(file.getOriginalFilename(), fileName, uploadPath, file.getSize()+"", r_num);
						//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
						productDao.insertRoomFile(fileVo);
					}
					
				}
	}


	@Override
	public ArrayList<LocationVO> getLocationNum() {
		ArrayList<LocationVO> tt =productDao.selectLocation(); 
		return  tt;
	}




	@Override
	public ArrayList<detailLocationVO> getDetailLocation(int lo_num) {
		// TODO Auto-generated method stub
		return productDao.selectDetailLocation(lo_num);
	}



}
