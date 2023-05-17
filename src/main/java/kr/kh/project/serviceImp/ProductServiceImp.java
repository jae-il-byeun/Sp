package kr.kh.project.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.dao.BoardDAO;
import kr.kh.project.dao.ProductDAO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.service.BoardService;
import kr.kh.project.service.ProductService;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;
import kr.kh.project.vo.ProductVO;
import kr.kh.project.vo.detailLocationVO;
import kr.kh.project.utils.UploadFileUtils;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LocationVO;

@Service
public class ProductServiceImp implements ProductService {
	
	@Autowired
	ProductDAO productDao;
	
	String uploadPath = "D:\\uploadfiles";

	@Override
	public boolean productInsert(ProductVO params) {
		
		if(params == null || params.getProduct_title().isEmpty() || params.getProduct_type().isEmpty() || params.getProduct_rooms().length == 0)
			return false;
		
		

		
		
		return true;
	}


/*	
	private boolean checkBoard(BoardVO board) {
//		if(board == null || board.getBo_title() == null || board.getBo_title().trim().length()== 0 || board.getBo_content() == null) {
//			return false;
//		}
		BoardTypeVO bt = boardDao.selectBoardType(board.getBo_bt_num());
		System.out.println(bt);
		if(bt == null)
			return false;
		if(bt.getBt_name().equals("자유게시판"))
			return true;
		if(board.getBo_content() == null || board.getBo_content().trim().length() == 0)
			return false;
		
		return true;
	}
	private void uploadFiles(MultipartFile [] files,int bo_num) {
		//첨부파일 없을 시
				if(files ==null || files.length == 0 )
					return ;
				//반복문
				for(MultipartFile file : files) {
					if(file == null || file.getOriginalFilename().length()==0)
						continue;
					String fileName = "";
					//첨부파일 서버에 업로드
					try {
						fileName = UploadFileUtils.uploadFile(uploadPath,
								 file.getOriginalFilename(), //파일명
								 file.getBytes()); //실제 파일 데이터
					} catch(Exception e){
						e.printStackTrace();
					}
					
					//첨부파일 객체를 생성
					FileVO fileVo = new FileVO(file.getOriginalFilename(), fileName, bo_num);
					//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
//					boardDao.insertFile(fileVo);
				}
	}
//	@Override
//	public BoardVO getBoard(int bo_num, int now_au) {
//		// 조회수 증가
////		boardDao.updateBoardViews(bo_num);
//		//게시글 가져오기
//		BoardVO board= boardDao.selectBoardList(bo_num);
//		//권한
//		
//		
//		
//			
//		return board;
//	}

*/


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
