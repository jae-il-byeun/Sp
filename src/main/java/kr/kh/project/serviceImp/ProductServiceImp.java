package kr.kh.project.serviceImp;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.dao.ProductDAO;
import kr.kh.project.service.ProductService;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.ProductRoomsVO;
import kr.kh.project.vo.detailLocationVO;
import kr.kh.project.utils.UploadFileUtils;
import kr.kh.project.vo.ProductFileVO;
import kr.kh.project.vo.ProductRoomFileVO;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LocationVO;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDAO productDao;
	
	String uploadPath = "D:\\uploadfiles";

	@Override
	public ProductVO productInsert(ProductVO params, MultipartFile[] files) {
		//필수값 체크. 빈값이면 안되는 항목.
		//if(params == null || params.getProduct_name().isEmpty() || params.getProduct_type().isEmpty())
		//	return params;
		
		//DataBase에 상품정보를 넣고 상품번호를 리턴받자.
		productDao.insertProduct(params);
		
		//이미지 첨부가 있으면
		if(params.getProduct_num() != null && params.getProduct_num() > 0) {
			if(files.length > 0)
			{
				//서버에 업로드하고 DB에도 추가해주자.
				uploadFiles(files, params.getProduct_num());			
			}
		}		
		
		return params;
	}

	@Override
	public ProductRoomsVO productRoomInsert(ProductRoomsVO room, MultipartFile[] files) {
		//DataBase에 상품정보를 넣고 상품번호를 리턴받자.
		productDao.insertProductRoom(room);
		
		//이미지 첨부가 있으면
		if(room.getR_num() != null && room.getR_num() > 0) {
			if(files.length > 0)
			{
				//서버에 업로드하고 DB에도 추가해주자.
				uploadFiles(files, room.getR_product_num(), room.getR_num());			
			}
		}
		
		return room;
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
			
			//첨부파일 객체를 생성
			//String file_name, String file_originName, String file_location,long file_size
			FileVO fileVo = new FileVO(fileName, file.getOriginalFilename(), uploadPath, file.getSize());
			productDao.insertFile(fileVo);
			
			if(r_num == null) {
				//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
				ProductFileVO p_fileVo = new ProductFileVO(product_num, fileVo.getFile_num());
				productDao.insertProductFile(p_fileVo);
			}
			else {
				ProductRoomFileVO p_r_fileVo = new ProductRoomFileVO(r_num, fileVo.getFile_num());
				productDao.insertProductRoomFile(p_r_fileVo);
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

	@Override
	public ArrayList<Map<String, Object>> getProductList(Map<String, Object> data) {
		// TODO Auto-generated method stub
		return productDao.selectProductList(data);
	}



}