package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Plan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long idPlan ;
	private String type_Plan ;
	private long plan ;
	@ManyToOne
	@JoinColumn
	private Project project ;
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
	public Plan(long idPlan, String type_Plan, long plan, Project project) {
		super();
		this.idPlan = idPlan;
		this.type_Plan = type_Plan;
		this.plan = plan;
		this.project = project;
	}
	
}
