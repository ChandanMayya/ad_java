/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mcacnj
 */
import java.io.*;
import java.sql.*;

public class Sample {    
   Sample s=new Sample();
   static Connection con=null;
   static ResultSet rs=null;
   static Statement st=null;
   static void dbconnection(){
       try{
           System.out.println("Inside try");
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           System.out.println("Inside try after class forname");
           con=DriverManager.getConnection("jdbc:derby://localhost:1527/student","user1","123");
           st=con.createStatement();
           
       }catch(ClassNotFoundException e0){
           System.out.println(e0.getMessage());
       }catch(SQLException e1){
           System.out.println(e1.getMessage());
       }       
   }
   static void insertRecord() throws IOException,SQLException{
       BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       System.out.println("Enter USN");
       int s1=Integer.parseInt(br.readLine());
       System.out.println("Enter Name");
       String s2=br.readLine();
       System.out.println("Enter SEM");
       int s3=Integer.parseInt(br.readLine());
       System.out.println("Enter AGE");
       int s4=Integer.parseInt(br.readLine());
       st.executeUpdate("insert into USER1.STUD values("+s1+",'"+s2+"',"+s3+","+s4+")");
       System.out.println("Record Added");
   }
   static void deleteRecord() throws IOException,SQLException{
       BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
       Sample.viewRecord();
       System.out.println("Enter USN to delete: ");
       int s1=Integer.parseInt(br.readLine());
       int a = st.executeUpdate("delete from USER1.STUD where USN="+s1+"");
       if(a>0)
           System.out.println("Record Deleted");
       else
           System.out.println("USN not Found");
   }
   static void updateRecord() throws IOException,SQLException{
       try{
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            Sample.viewRecord();
            System.out.println("Enter USN to update: ");
            int s1=Integer.parseInt(br.readLine());
            System.out.println("Enter Name");
            String s2=br.readLine();
            System.out.println("Enter SEM");
            int s3=Integer.parseInt(br.readLine());
            System.out.println("Enter AGE");
            int s4=Integer.parseInt(br.readLine());
            int b=st.executeUpdate("update USER1.STUD set NAME='"+s2+"',SEM="+s3+",AGE="+s4+" where USN="+s1+"");
            if(b>0)
                 System.out.println("Record updated");
            else
                System.out.println("Record not updated");
       }catch(SQLException e){
           System.out.println(e.getMessage());
       }catch(IOException e){
           System.out.println(e.getMessage());
       }  
   }
   static void viewRecord() throws IOException,SQLException{
       rs=st.executeQuery("select * from USER1.STUD");
       Boolean t=rs.next();
       if(!t)
           System.out.println("No Records");
       else{
           System.out.println("USN NAME SEM AGE");
           do{
               System.out.println(""+rs.getString(1)+"..."+rs.getString(2)+"..."+rs.getString(3)+"..."+rs.getString(4));
           }while(rs.next());
       }
   }
   public static void main(String[] args){
       try{
           dbconnection();
           BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
           while(true){
               System.out.println("1.Insert Record");
               System.out.println("2.Delete Record");
               System.out.println("3.View Record");
               System.out.println("4.Update Record");
               System.out.println("5.Exit");
               System.out.println("Enter Your Choice");
               int ch=Integer.parseInt(br.readLine());
               switch(ch){
                   case 1:
                       insertRecord();
                       break;
                   case 2:
                       deleteRecord();
                       break;
                   case 3:
                       viewRecord();
                       break;
                   case 4:
                       updateRecord();
                       break;
                   case 5:
                       System.exit(0);
                   default:
                       break;
               }
           }
       }catch(Exception e){
           System.out.println(e.getMessage());
       }
   }
}

