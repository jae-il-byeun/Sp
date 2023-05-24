package kr.kh.project.serviceImp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import kr.kh.project.vo.LikesUserVO;
import kr.kh.project.utils.UploadFileUtils;
import kr.kh.project.vo.FileVO;
import kr.kh.project.vo.LikesSellerVO;

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
	
	private boolean uploadFiles(MultipartFile [] files, BoardVO board) {
		//첨부파일 없을 시
		System.out.println("2+ : " + files);
				if(files ==null || files.length == 0 )
					return false;
				System.out.println("3+ : " + files);
				//반복문
				FileVO fileVo = new FileVO();
//				List<FileVO> test = new ArrayList<FileVO>();
				for(MultipartFile file : files) {
					if(file == null || file.getOriginalFilename().length() == 0)
						continue;
					System.out.println(file.isEmpty());
					try {
						byte[] arrt = file.getBytes();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					
					System.out.println("4+ : " + file);
					System.out.println("origin+name+size : "+ file.getOriginalFilename()+ file.getName()+file.getSize());
					
					if(file == null || file.getOriginalFilename().length()==0)
						continue;
					System.out.println("5+ : " + file);
					String fileName = "";
					//첨부파일 서버에 업로드
					System.out.println("33");
					try {
						fileName = UploadFileUtils.uploadFile(uploadPath,
								 file.getOriginalFilename(), //파일명
								 file.getBytes()); //실제 파일 데이터
								
					} catch(Exception e){
						e.printStackTrace();
					}
					// fileVo에 객체 추가 
					//첨부파일 객체를 생성
					System.out.println("44");
					fileVo = new FileVO(fileName,file.getOriginalFilename(), uploadPath, file.getSize());

					//DAO에게 첨부파일 정보를 주면서 추가하라고 요청
					boardDao.insertFile(fileVo);
					System.out.println("55 : " + fileVo);
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
					System.out.println("66");
					ArrayList<FileVO> te= boardDao.selectBoardFileNum(fileName);
					FileVO fa_num = te.get(0);
					int file_num=fa_num.getFile_num();
					Integer bo_num = board.getBo_num();
					System.out.println("77");
					boardDao.insertBoardFile( bo_num, file_num, file_type);
					System.out.println("88");
				}
				
				return true;
	}

	@Override
	public String selectBoardWrite(BoardTypeVO bo_bt_num) {
		System.out.println(bo_bt_num);
		return "";
	}
	@Override
	public BoardVO getBoard(int bo_num, MemberVO user) {
		//조회수 증가 (조회수 증가 먼저 다음 게시글가져오기)
		boardDao.updateBoardViews(bo_num);
		//게시글 가져오기
		BoardVO board = boardDao.selectBoard(bo_num);
		
		return board;
	}
	@Override
	public BoardVO getBoard(int bo_num, BusinessVO seller) {
		//조회수 증가 (조회수 증가 먼저 다음 게시글가져오기)
		boardDao.updateBoardViews(bo_num);
		//게시글 가져오기
		BoardVO board = boardDao.selectBoard(bo_num);
		return board;
	}

	@Override
	public ArrayList<Map<String, Object>> getBftnf(int bo_num) {
		System.out.println(bo_num);
		ArrayList<Map<String, Object>> bf = boardDao.selectBftnf(bo_num);
		System.out.println("bf : " + bf);
		return bf;
	}
	@Override
	public boolean deleteBoard(int bo_num, MemberVO user, BusinessVO seller) {
		if(user == null && seller == null)
			return false;
		BoardVO board = boardDao.selectBoard(bo_num);
		System.out.println("게시판 : "+ board);
		if(board == null)
			return false;
		
		if(!board.getBo_me_id().equals(user.getMe_id()))
			return false;
		
		ArrayList<Map<String, Object>> fileList = boardDao.selectFileList(bo_num);
		System.out.println("파일리스트 : "+ fileList);
		for(Map<String, Object> file : fileList) {
			System.out.println("file : " +file);
			Integer fn=(Integer) file.get("file_num");
			System.out.println("fn : " + fn);
			boardDao.deleteBoardFile(fn);
		}
		deleteFileList(fileList);

		 boolean result = boardDao.deleteBoard(bo_num);
		 if(result == true)
			 return true;
		 else
			 return false;
	}
	private void deleteFileList(ArrayList<Map<String, Object>> fileList) {
		System.out.println("?? : " +  fileList);
		if(fileList == null || fileList.size() == 0)
			return;
		
		for(Map<String, Object> file : fileList) {
			if(file == null) 
				continue;
			System.out.println("file : " +file);
			
			String fn =(String) file.get("file_name");
			System.out.println("fn" + fn);
			UploadFileUtils.removeFile(uploadPath, fn);
			
			boardDao.deleteFile(file);		
			
			
		}
		
	}
	
	@Override
	public int updateUserLikes(MemberVO user, int bo_num, int li_state) {
		// 기존에 추천/비추천을 했는지 확인
				LikesUserVO likesVo = boardDao.selectLikesByUserId(bo_num, user.getMe_id());
				System.out.println("11 " + likesVo);
				//없으면 추가
				if(likesVo==null) {
					//LieksVO 객체를 생성하여 
					likesVo = new LikesUserVO(li_state, user.getMe_id(), bo_num);
					System.out.println("12 " + likesVo);
					//DAO에게 전달해서 inseret하라고 시킴
					boardDao.insertUserLikes(likesVo);
					//bo_num를 리턴
					return li_state;
				}
				
				//있으면 수정
				if(li_state != likesVo.getLi_state()) {
					//현재 상태와 기존 상태가 다르면 => 상태를 바꿔야 한다.
					likesVo.setLi_state(li_state);
					//업데이트
					boardDao.updateUserLikes(likesVo);
					//bo_num를 리턴
					return li_state;
				}
					//현재 상태와 기존상태가 같으면 => 취소
					likesVo.setLi_state(0);
					//업데이트
					boardDao.updateUserLikes(likesVo);
					//0을 리턴
					return 0;

	}
	@Override
	public int updateSellerLikes(BusinessVO seller, int bo_num, int li_state) {
		// 기존에 추천/비추천을 했는지 확인
		LikesSellerVO likesVo = boardDao.selectLikesBySellerId(bo_num,seller.getBi_id());
		//없으면 추가
		if(likesVo==null) {
			//LieksVO 객체를 생성하여 
			likesVo = new LikesSellerVO(li_state, seller.getBi_id(), bo_num);
			//DAO에게 전달해서 inseret하라고 시킴
			boardDao.insertSellerLikes(likesVo);
			//bo_num를 리턴
			return li_state;
		}
		
		//있으면 수정
		if(li_state != likesVo.getLi_state()) {
			//현재 상태와 기존 상태가 다르면 => 상태를 바꿔야 한다.
			likesVo.setLi_state(li_state);
			//업데이트
			boardDao.updateSellerLikes(likesVo);
			//bo_num를 리턴
			return li_state;
		}
			//현재 상태와 기존상태가 같으면 => 취소
			likesVo.setLi_state(0);
			//업데이트
			boardDao.updateSellerLikes(likesVo);
			//0을 리턴
			return 0;
	}
	@Override
	public void updateBoardByLikes(int bo_num) {
		boardDao.updateBoardByLikes(bo_num);
		
	}
	@Override
	public ArrayList<Map<String, Object>> getFileList(int bo_num) {

		return boardDao.selectFileList(bo_num);
	}
	@Override
	public ArrayList<Map<String, Object>> getExtraFileLists(int bo_num) {
		
		return boardDao.selectExtraFileList(bo_num);
	}
	@Override
	public ArrayList<Map<String, Object>> getImegeFileList(int bo_num) {
		
		return boardDao.selectImegeFileList(bo_num);
	}
	
	@Override
	public BoardVO getBoardByWriteUserAuthority(int bo_num, MemberVO user) {
		BoardVO board = boardDao.selectBoard(bo_num);
		
		if(board == null)
			return null;
		
		if(user == null)
			return null;
		
		if(user.getMe_id().equals(board.getBo_me_id()))
			return board;
		return null;
	}
	@Override
	public BoardVO getBoardByWriteSellerAuthority(int bo_num, BusinessVO seller) {
		BoardVO board = boardDao.selectBoard(bo_num);
		
		if(board == null)
			return null;
		
		if(seller == null)
			return null;
		
		if(seller.getBi_id().equals(board.getBo_bi_id()))
			return board;
		return null;
	}
	@Override
	public boolean updateUserBoard(BoardVO board, MultipartFile[] files, int[] fileNums, MemberVO user) {
		if(board == null || board.getBo_num()<=0)
			return false;
		if(user == null)
			return false;
		//게시글 정보를 가져옴
		int r=fileNums.length;
		System.out.println(r);
		BoardVO dbBoard = boardDao.selectBoard(board.getBo_num());
		System.out.println("dbBoard(imp) : "+ dbBoard);
		//가져온 게시글이 null인지 확인
		if(dbBoard == null)
			return false;
		//가져온 게시글에 제목, 내용, 게시글 타입 번호를 수정
		if(!dbBoard.getBo_me_id().equals(user.getMe_id()))
			return false;
		//Dao에게 게시글 정보를 주면서 수정하라고 요청
		if(boardDao.updateBoard(board) == 0)
			
			return false;
		System.out.println("11");
		System.out.println("1+" + files);
		//추가할 첨부파일 업로드
		uploadFiles(files,board);
		System.out.println("5+");
		for(int test : fileNums) {
			System.out.println("test" + test);
		}
		//fileNums를 이용하여 첨부파일 객체를 가져와서 처부파일 리스트에 추가
		if(fileNums == null || fileNums.length == 0)
			return true;
		System.out.println("22");
		ArrayList<FileVO> fileList = new ArrayList<FileVO>();
		
		for(int fileNum : fileNums) {
			 ArrayList<FileVO> fileVo = boardDao.selectFile(fileNum);
			 System.out.println("fileVo(imp) : "+ fileVo);
			if(fileVo != null)
				fileList.addAll(fileVo);
		}
//		for(Map<String, Object> file : fileList) {
//			if(file == null) 
//				continue;
//			System.out.println("file : " +file);
//			
//			String fn =(String) file.get("file_name");
//			System.out.println("fn" + fn);
//			UploadFileUtils.removeFile(uploadPath, fn);
//			
//			boardDao.deleteFile(file);		
		//삭제 첨부파일 리스트를 이용하여 첨부파일 삭제
		System.out.println("fileList(imp) : "+ fileList);
		deleteUpdateFileList(fileList);
		
		return true;
	}
	private void deleteUpdateFileList(ArrayList<FileVO> fileList) {
		
		if(fileList == null || fileList.size()== 0)
			return;
		
		System.out.println("fileList 2 : " + fileList);
		ArrayList<FileVO> fileVOList = new ArrayList<FileVO>();
		System.out.println("22");
		for(FileVO file : fileList) {
			System.out.println("file 5 : " + file);
			Integer file_num = file.getFile_num();
			System.out.println("file_num 5 : " + file_num);
			UploadFileUtils.removeFile(uploadPath, file.getFile_name());
			boardDao.deleteBoardFile(file_num);
			boardDao.deleteFileList(file_num);		
		}
//		for( Map<String, Object> file : fileList) {
//			for(FileVO fn : file) {
//				fn= file.get(fileList);
//			}
//			System.out.println("file : " +file);
//			if(file == null) 
//				continue;
			
			
//			String te = (String)fn.get("File_name");
//			System.out.println("fn" + fn);
			
//			
			
//		}
		
	}
	@Override
	public boolean updateSellerBoard(BoardVO board, MultipartFile[] files, int[] fileNums, BusinessVO seller) {
		if(board == null || board.getBo_num()<=0)
			return false;
		if(seller == null)
			return false;
		//게시글 정보를 가져옴
		BoardVO dbBoard = boardDao.selectBoard(board.getBo_num());
		//가져온 게시글이 null인지 확인
		if(dbBoard == null)
			return false;
		//가져온 게시글에 제목, 내용, 게시글 타입 번호를 수정
		if(!dbBoard.getBo_me_id().equals(seller.getBi_id()))
			return false;
		//Dao에게 게시글 정보를 주면서 수정하라고 요청
		if(boardDao.updateBoard(board) == 0)
			return false;
		
		//추가할 첨부파일 업로드
		uploadFiles(files,board);
		
		//fileNums를 이용하여 첨부파일 객체를 가져와서 처부파일 리스트에 추가
		if(fileNums == null || fileNums.length == 0)
			return true;
		
//		ArrayList<Map<String, Object>> fileList = new ArrayList<Map<String, Object>>();
//		for(int fileNum : fileNums) {
//			ArrayList<Map<String, Object>> fileVo = boardDao.selectFile(fileNum);
//			if(fileVo != null)
//				fileList.add(fileVo);
//		}
//		//삭제 첨부파일 리스트를 이용하여 첨부파일 삭제
//		
//		deleteFileList(fileList);
		
		return true;
	}
	


}
