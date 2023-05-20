package kr.kh.project.serviceImp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.kh.project.dao.BoardDAO;
import kr.kh.project.pagination.Criteria;
import kr.kh.project.service.BoardService;
import kr.kh.project.vo.BoardFileVO;
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
//	@Override
//	public ArrayList<BoardVO> getBoardList() {
//		ArrayList<BoardVO> testArrayList = boardDao.selectBoardList();
//
//		return testArrayList;
//	}
	@Override
	public int getBoardTotalCount(Criteria cri) {
		return boardDao.selectBoardTotalCount(cri);
	}
	
	@Override
	public ArrayList<BoardTypeVO> getBoardType(int me_authority) {
		ArrayList<BoardTypeVO> bt = new ArrayList<BoardTypeVO>();
		if(me_authority == 9) {
			 bt =boardDao.selectAllBoardType(me_authority);			
		}else if(me_authority >=1) {
			 bt = boardDao.selectChooseBoardType(me_authority);
			
		}
		return bt;
	}
	@Override
	public ArrayList<BoardTypeVO> getBoardListType() {
		ArrayList<BoardTypeVO> bt = boardDao.selectBoardListType();
		return bt;
	}

	@Override
	public boolean insertBoard_User(BoardVO board, MemberVO user, MultipartFile[] files) {
		if(user == null)
			return false;
		if(!checkBoard(board))
			return false;
		String me_id= user.getMe_id();
		board.setBo_me_id(me_id);
		
		
		boardDao.userInsertBoard(board);
		uploadFiles(files, board);
		return true;
	}
	@Override
	public boolean insertBoard_Seller(BoardVO board, BusinessVO seller, MultipartFile[] files) {
		if(seller == null)
			return false;
		if(!checkBoard(board))
			return false;
		String bi_id= seller.getBi_id();
		board.setBo_bi_id(bi_id);
		boardDao.sellerInsertBoard(board);
		uploadFiles(files, board);
		return true;
	}
	
	private boolean checkBoard(BoardVO board) {
		if(board == null || board.getBo_name() == null || board.getBo_name().trim().length()== 0 || board.getBo_content() == null) {
			return false;
		}
		BoardTypeVO bt = boardDao.selectBoardType(board.getBo_bt_num());
		if(bt == null)
			return false;
		if(bt.getBt_name().equals("자유게시판"))
			return true;
		if(board.getBo_content() == null || board.getBo_content().trim().length() == 0)
			return false;
		
		return true;
	}
	
	private boolean uploadFiles(MultipartFile [] files,BoardVO board) {
		//첨부파일 없을 시
				if(files ==null || files.length == 0 )
					return false;
				//반복문
				FileVO fileVo = new FileVO();
//				List<FileVO> test = new ArrayList<FileVO>();
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
					// fileVo에 객체 추가 
					//첨부파일 객체를 생성
					fileVo = new FileVO(fileName,file.getOriginalFilename(), uploadPath, file.getSize());

					//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
					boardDao.insertFile(fileVo);

					String file_type ="";
					if(board.getBo_bt_num() == 0) {
					
						
						if(fileVo.getFile_originName().contains(".jpg") || fileVo.getFile_originName().contains(".png")
								|| fileVo.getFile_originName().contains(".gif")|| fileVo.getFile_originName().contains(".jpeg")) {
							file_type ="이미지";
							
						}else
							file_type="첨부파일";
						
					}else if(board.getBo_bt_num() == 1) {
						file_type="이미지";
					};
					ArrayList<FileVO> te= boardDao.selectBoardFileNum(fileName);
					FileVO fa_num = te.get(0);
					int file_num=fa_num.getFile_num();
					Integer bo_num = board.getBo_num();
					
					boardDao.insertBoardFile( bo_num, file_num, file_type);
				}
				return true;
	}
//	@Override
//	public BoardVO getBoard(int bo_num, MemberVO user, BusinessVO seller) {
//		//조회수 증가 (조회수 증가 먼저 다음 게시글가져오기)
//		boardDao.updateBoardViews(bo_num);
//		//게시글 가져오기
//		BoardVO board = boardDao.selectBoard(bo_num);
//		//권한확인
//		if(board == null)
//			return null;
//		BoardTypeVO boardType = boardDao.selectBoardType(board.getBo_bt_num());
//		System.out.println(boardType);
//		//비회원 이상 읽기 가능
//		if(boardType.getBt_num() != 2 || boardType.getBt_read_authority() != 1)
//				return board;
//		//회원 이상인 경우 비회원은 못봄
//		if(boardType.getBt_read_authority()== 0 && user == null || seller == null)
//			return null;
//		//게시글 읽기 권한이 사용자 권한 이하인 경우만 조회가능
//		if(boardType.getBt_read_authority() <= user.getMe_authority() || boardType.getBt_read_authority() <=seller.getBi_authority())
//			return board;
//
//		return null;
//	}

	@Override
	public String selectBoardWrite(BoardTypeVO bo_bt_num) {
		System.out.println(bo_bt_num);
		return "";
	}


}
