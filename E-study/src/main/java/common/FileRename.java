package common;
import java.io.File;
import java.util.Random;

import com.oreilly.servlet.multipart.FileRenamePolicy;
public class FileRename implements FileRenamePolicy{
	public String name;
	@Override
	public File rename (File f) {
		String fname=f.getParent();
		String name=f.getName();
		Random r=new Random();
		int num=r.nextInt(999999);
		name=num+name;
		File fpath=new File(fname+"//"+name);
		return fpath;
		
		
	}
	
}



