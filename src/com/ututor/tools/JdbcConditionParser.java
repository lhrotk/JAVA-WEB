package com.ututor.tools;

import com.ututor.entity.SearchConditions;

public class JdbcConditionParser {
	SearchConditions conditions;
	public JdbcConditionParser(SearchConditions conditions){
		this.conditions = conditions;
	}
	
	public String getCourseTitle(){
		if(this.conditions.getCourseTitle()==null){
			return "";
		}else{
			return this.conditions.getCourseTitle();
		}
	}
	
	public String getCourseCode(){
		if(this.conditions.getCourseCode()==null){
			return "";
		}else{
			return this.conditions.getCourseCode();
		}
	}
	
	public String getSeatConstriant(){
		if(this.conditions.getTotalStudent()==0){
			return " ";
		}else if(this.conditions.getTotalStudent()<5){
			return " AND class.total_seat =" + this.conditions.getTotalStudent() + " ";
		}else{
			return " AND class.total_seat > 4 ";
		}
	}
	
	public String getTypeConstriant(){
		if(this.conditions.getUni()==0){
			return " ";
		}else if(this.conditions.getUni()==1){
			return " AND class.type = 1 ";
		}else{
			return " AND class.type > 1 "; 
		}
	}
	
	public String getMaxPriceConstriant(){
		if(this.conditions.getMaxPrice()==null||this.conditions.getMaxPrice().equals("")){
			return "";
		}else{
			try{
				double maxPrice = Double.parseDouble(this.conditions.getMaxPrice());
				System.out.println(maxPrice);
				return " AND class.n_price <= " + maxPrice;
			}catch(Exception e){
				return "";
			}
		}
	}
	
	public String getMinPriceConstriant(){
		if(this.conditions.getMinPrice()==null||this.conditions.getMinPrice().equals("")){
			return "";
		}else{
			try{
				double minPrice = Double.parseDouble(this.conditions.getMinPrice());
				System.out.println(minPrice);
				return " AND class.n_price >= " + minPrice;
			}catch(Exception e){
				e.printStackTrace();
				return "";
			}
		}
	}
	
	public String getMinDateConstriant(){
		if(this.conditions.getMinDate()==null||this.conditions.getMinDate().equals("")){
			return "";
		}else{
			return " AND table2.time >'"+this.conditions.getMinDate()+"' ";
		}
	}
	
	public String getMaxDateConstriant(){
		if(this.conditions.getMaxDate()==null||this.conditions.getMaxDate().equals("")){
			return "";
		}else{
			return " AND table2.time <'"+this.conditions.getMaxDate()+"' ";
		}
	}
	
	public String getLauncherConstriant(){
		if(this.conditions.getLauncher_id()==-1){
			return "";
		}else{
			return " AND class.launcher_id = "+this.conditions.getLauncher_id();
		}
	}
	
	public String getDisplayOpenedCourse(){
		if(!this.conditions.getStart()){
			return " AND class.n_done = 0  ";
		}else{
			return "";
		}
	}
	
	public String getFullConstriant(){
		if(this.conditions.getFull()){
			return ""; 
		}else{
			return " AND class.remain_seat > 0 ";
		}
	}
	
	public String getDisplayUdplace(){
		if(this.conditions.getNoPlace()){
			return "";
		}else{
			return " AND (table2.lesson_seq is null or table2.place is not null) ";
		}
	}
	
	public String getDisplayUdtime(){
		if(this.conditions.getNoTime()){
			return "";
		}else{
			return " AND (table2.lesson_seq is null or table2.status = 'decided')";
		}
	}
	
	public String getOrder(){
		switch(this.conditions.getOrder()){
		case "1": return "order by if(isnull(launch_time),1,0),launch_time desc ";
		case "2": return "order by if(isnull(launch_time),1,0), launch_time ";
		case "3": return "order by if(isnull(time),1,0),time "; 
		case "4": return "order by if(isnull(time),1,0),time desc "; 
		case "5": return "order by if(isnull(n_price),1,0), n_price "; 
		case "6": return "order by if(isnull(n_price),1,0), n_price desc "; 
		case "7": return "order by if(isnull(number_of_attendant),1,0), number_of_attendant desc "; 
		case "8": return "order by if(isnull(result),1,0), result desc "; 
		default: return "";
		}
	}
}
