package com.ututor.action.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ututor.impl.JdbcClassDAO;

public class UploadImageAction extends ActionSupport
{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private File file;
    
    //提交过来的file的名字
    private String fileFileName;
    
    //提交过来的file的MIME类型
    private String fileContentType;
    private boolean ok;
    
    public int class_id;



    public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}

	public File getFile()
    {
        return file;
    }

    public void setFile(File file)
    {
        this.file = file;
    }

    public String getFileFileName()
    {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName)
    {
        this.fileFileName = fileFileName;
    }

    public String getFileContentType()
    {
        return fileContentType;
    }

    public void setFileContentType(String fileContentType)
    {
        this.fileContentType = fileContentType;
    }
    
    @Override
    public String execute() throws Exception
    {
    	String root = ServletActionContext.getServletContext().getRealPath("");
//    	System.out.println(root);
    	root = root + "../upload";
    	File folder = new File(root);
    	if(!folder.exists()){
    		folder.mkdir();
    	}
    	root = root+"/"+class_id;
    	File classFolder = new File(root);
    	if(!classFolder.exists()){
    		classFolder.mkdir();
    	}
        
        InputStream is = new FileInputStream(file);
        System.out.println(class_id);
        File newFile = new File(root, "cover.jpg");
        
        OutputStream os = new FileOutputStream(newFile);
        
//        System.out.println("fileFileName: " + fileFileName);
//        System.out.println("file: " + file.getName());
//        System.out.println("file: " + file.getPath());
//        System.out.println("new file: " + newFile.getPath());
        
        byte[] buffer = new byte[500];
        int length = 0;
        
        while(-1 != (length = is.read(buffer, 0, buffer.length)))
        {
            os.write(buffer);
        }
        
        os.close();
        is.close();
        
        JdbcClassDAO classDAO = new JdbcClassDAO();
        classDAO.modifyImage(class_id, "../upload/"+class_id+"/cover.jpg");
        ok=true;
        
        return SUCCESS;
    }
}
