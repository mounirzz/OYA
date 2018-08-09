package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;
@Entity
@DynamicUpdate
@Table(name="t_plan")
public class Plan implements Serializable {
	private static final long serialVersionUID = 1L;
	private long idPlan ;
	private String type_Plan ;
	private long plan ;
	private Date DatePlan;
	@ManyToOne
	@JoinColumn
	private Project project ;
	private Admin InputAdmin ;
	public Admin getInputAdmin() {
		return InputAdmin;
	}
	public void setInputAdmin(Admin inputAdmin) {
		InputAdmin = inputAdmin;
	}
	public long getIdPlan() {
		return idPlan;
	}
	public void setIdPlan(long idPlan) {
		this.idPlan = idPlan;
	}
	public String getType_Plan() {
		return type_Plan;
	}
	public void setType_Plan(String type_Plan) {
		this.type_Plan = type_Plan;
	}
	public long getPlan() {
		return plan;
	}
	public void setPlan(long plan) {
		this.plan = plan;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public Date getDatePlan() {
		return DatePlan;
	}
	public void setDatePlan(Date datePlan) {
		DatePlan = datePlan;
	}
	public Plan(long idPlan, String type_Plan, long plan, Date datePlan, Project project) {
		super();
		this.idPlan = idPlan;
		this.type_Plan = type_Plan;
		this.plan = plan;
		DatePlan = datePlan;
		this.project = project;
	}

	
}
