package kr.kh.project.serviceImp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.dao.BoardDAO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.service.BoardService;
import kr.kh.project.vo.BoardTypeVO;
import kr.kh.project.vo.BoardVO;
import kr.kh.project.vo.BusinessVO;
import kr.kh.project.vo.MemberVO;
import kr.kh.project.utils.UploadFileUtils;
import kr.kh.project.vo.FileVO;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
	BoardDAO boardDao;
	
	String uploadPath = "D:\\uploadfiles";
	
	@Override
	public ArrayList<BoardVO> getBoardList(Criteria cri) {
		if(cri == null)
			cri = new Criteria();
		return boardDao.selectBoardList(cri);
	}

	@Override
	public int getBoardTotalCount(Criteria cri) {
		return boardDao.selectBoardTotalCount(cri);
	}
	
	@Override
	public ArrayList<BoardTypeVO> getBoardType(int now_au) {
		
		return boardDao.selectAllBoardType(now_au);
	}

	@Override
	public boolean insertBoard_User(BoardVO board, MemberVO user, MultipartFile[] files) {
		if(user == null)
			return false;
		if(!checkBoard(board))
			return false;
		String me_num= user.getMe
		board.setBo_me_num(me_id);
		boardDao.insertBoard(board);
		uploadFiles(files,board.getBo_num());
		return false;
	}

	@Override
	public boolean insertBoard_Seller(BoardVO board, BusinessVO seller, MultipartFile[] files) {
		if(seller == null)
			return false;
		if(!checkBoard(board))
			return false;
		String bi_id= seller.getBi_id();
		board.setBo_bi_num(bi_id);
		return false;
	}
	private boolean checkBoard(BoardVO board) {
		if(board == null || board.getBo_title() == null || board.getBo_title().trim().length()== 0 || board.getBo_content() == null) {
			return false;
		}
		BoardTypeVO bt = boardDao.selectBoardType(board.getBo_bt_num());
		if(bt == null)
			return false;
		if(bt.getBt_type().equals("이미지"))
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



}
