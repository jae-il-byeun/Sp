package kr.kh.project.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FileVO {
	int file_num;
	String file_name;
	String file_location;
	String file_originName;
	long file_size;
	
	public FileVO( String file_name, String file_originName, String file_location,long file_size) {
		this.file_name = file_name;
		this.file_originName = file_originName;
		this.file_location = file_location;
		this.file_size = file_size;
	}
	
}
