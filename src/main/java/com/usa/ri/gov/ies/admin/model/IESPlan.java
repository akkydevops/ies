package com.usa.ri.gov.ies.admin.model;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.Data;

@Data
public class IESPlan {

	private String planId;
	
	private String planName;
	
	private String planDesc;
	
	private String startDate;
	
	private String endDate;
	
	private String activeSw;
	
	private Timestamp createDate;
	
	private Timestamp updateDate;
	
	private String createtedBy;
	
	private String updatedBy;

}
