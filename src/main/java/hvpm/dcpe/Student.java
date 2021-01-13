/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hvpm.dcpe;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;
public class Student 
{
  


	
private int sid;
private String name; 
private String email;
private String phone; 
private String FName;
private String LName;
private String pass;

private String quet;
private String ediff;
private String coursen;
private String sem;
private String sub;
private String question;
private String answer;
private String marks;
private String optionA;
private String optionB;
private String optionC;
private String optionD;









public String getQuestion() {
	return question;
}




public void setQuestion(String question) {
	this.question = question;
}




public String getQuet() {
	return quet;
}




public void setQuet(String quet) {
	this.quet = quet;
}




public String getEdiff() {
	return ediff;
}




public void setEdiff(String ediff) {
	this.ediff = ediff;
}




public String getCoursen() {
	return coursen;
}




public void setCoursen(String coursen) {
	this.coursen = coursen;
}




public String getSem() {
	return sem;
}




public void setSem(String sem) {
	this.sem = sem;
}




public String getSub() {
	return sub;
}




public void setSub(String sub) {
	this.sub = sub;
}







public String getAnswer() {
	return answer;
}




public void setAnswer(String answer) {
	this.answer = answer;
}




public String getMarks() {
	return marks;
}




public void setMarks(String marks) {
	this.marks = marks;
}




public String getOptionA() {
	return optionA;
}




public void setOptionA(String optionA) {
	this.optionA = optionA;
}




public String getOptionB() {
	return optionB;
}




public void setOptionB(String optionB) {
	this.optionB = optionB;
}




public String getOptionC() {
	return optionC;
}




public void setOptionC(String optionC) {
	this.optionC = optionC;
}




public String getOptionD() {
	return optionD;
}




public void setOptionD(String optionD) {
	this.optionD = optionD;
}




public String getFName() {
	return FName;
}




public void setFName(String fName) {
	FName = fName;
}




public String getLName() {
	return LName;
}




public void setLName(String lName) {
	LName = lName;
}









public int getSid() {
	return sid;
}




public void setSid(int sid) {
	this.sid = sid;
}


public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPhone() {
	return phone;
}


public void setPhone(String phone) {
	this.phone = phone;
}


public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}




public boolean insert() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into teacher(fname,lname,email,pass,phone) values(?,?,?,?,?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,FName);
        smt.setString(2,LName);
        smt.setString(3,email);
        smt.setString(4,pass);
        smt.setString(5,phone);
   

      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}

public boolean insertque() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into objq(quet,ediff,coursen,sem,sub,Question,answer,marks,optionA,optionB,optionC,optionD) values(?,?,?,?,?,?,?,?,?,?,?,?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,quet);
        smt.setString(2,ediff);
        smt.setString(3,coursen);
        smt.setString(4,sem);
        smt.setString(5,sub);
        smt.setString(6,question);
        smt.setString(7,answer);
        smt.setString(8,marks);
        smt.setString(9,optionA);
        smt.setString(10,optionB);
        smt.setString(11,optionC);
        smt.setString(12,optionD);
   

      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}


public boolean insertdesque() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into distq(quet,ediff,coursen,sem,sub,Question,answer,marks) values(?,?,?,?,?,?,?,?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,quet);
        smt.setString(2,ediff);
        smt.setString(3,coursen);
        smt.setString(4,sem);
        smt.setString(5,sub);
        smt.setString(6,question);
        smt.setString(7,answer);
        smt.setString(8,marks);
        
   

      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}


public boolean insertsub() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="insert into subject(sub) values(?)";
        
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,sub);
    
   

      
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}




public Vector list2(int max)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from teacher order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
          Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setFName(rs.getString("fname"));
          s.setLName(rs.getString("lname"));
          s.setEmail(rs.getString("email"));
          s.setPhone(rs.getString("phone"));
        
       
          vlist.add(s);
          
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}

public Vector list22(int max)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from subject order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
          Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setSub(rs.getString("sub"));
         
        
       
          vlist.add(s);
          
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}





public Vector list(String pattern)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from objq where quet like '"+pattern+"%' OR Question like '"+pattern+"%' OR coursen like '"+pattern+"%' order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
    
    	  Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setQuet(rs.getString("quet"));
          s.setEdiff(rs.getString("ediff"));
          s.setCoursen(rs.getString("coursen"));
          s.setSem(rs.getString("sem"));
          s.setQuestion(rs.getString("Question"));
          
          s.setAnswer(rs.getString("answer"));
          s.setMarks(rs.getString("marks"));
          s.setOptionA(rs.getString("optionA"));
          s.setOptionB(rs.getString("optionB"));
          s.setOptionC(rs.getString("optionC"));
          s.setOptionD(rs.getString("optionD"));
       
         
          vlist.add(s);
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}

public Vector list12(String pattern)
{
    Vector vlist=new Vector();
    try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
      String msql="select * from distq where quet like '"+pattern+"%' OR Question like '"+pattern+"%' OR coursen like '"+pattern+"%' order by sid desc"  ;
      Statement smt=con.createStatement();
      ResultSet rs=smt.executeQuery(msql);
      while(rs.next())
      {
    
    	  Student s=new Student();
          s.setSid(rs.getInt("sid"));
          s.setQuet(rs.getString("quet"));
          s.setEdiff(rs.getString("ediff"));
          s.setCoursen(rs.getString("coursen"));
          s.setSem(rs.getString("sem"));
          s.setSub(rs.getString("sub"));
          
          s.setQuestion(rs.getString("Question"));
          
          s.setAnswer(rs.getString("answer"));
          s.setMarks(rs.getString("marks"));
         
       
         
          vlist.add(s);
      }
      con.close();
      return vlist;
    }
    catch(Exception er)
    {
        
    }
    return vlist;
}




public boolean delete() throws ClassNotFoundException
{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="DELETE FROM subject WHERE sid= "+sid+"";
        PreparedStatement smt=con.prepareStatement(msql);
     
         smt.executeUpdate();
        
        return true;
    }
   catch(SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}




public boolean update() throws ClassNotFoundException
{
    try{
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hvpm", "root", "root");
        String msql="Update subject set sub=? where sid=" +sid;
        
        PreparedStatement smt=con.prepareStatement(msql);
        smt.setString(1,sub);
        
       
   
        
        smt.executeUpdate();
        con.close();
        return true;
    
    }
   catch( SQLException er) 
   {
      er.printStackTrace();  
   }
    return false;
}



















    
    
    
}

    
    


