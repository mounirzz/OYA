package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicUpdate;
@Entity
@DynamicUpdate
@Table(name="t_chantier")
public class Chantier implements Serializable {
	
	private static final long serialVersionUID = 1L;
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id ;
		private String intitule ;
		private long image ;
		private String cordonnes_lambairt ;
		private String observation ;
		@OneToOne
		@JoinColumn
		private Project project ;
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		public String getIntitule() {
			return intitule;
		}
		public void setIntitule(String intitule) {
			this.intitule = intitule;
		}
		public long getImage() {
			return image;
		}
		public void setImage(long image) {
			this.image = image;
		}
		public String getCordonnes_lambairt() {
			return cordonnes_lambairt;
		}
		public void setCordonnes_lambairt(String cordonnes_lambairt) {
			this.cordonnes_lambairt = cordonnes_lambairt;
		}
		public String getObservation() {
			return observation;
		}
		public void setObservation(String observation) {
			this.observation = observation;
		}
		public Project getProject() {
			return project;
		}
		public void setProject(Project project) {
			this.project = project;
		}
		public Chantier(long id, String intitule, long image, String cordonnes_lambairt, String observation,
				Project project) {
			super();
			this.id = id;
			this.intitule = intitule;
			this.image = image;
			this.cordonnes_lambairt = cordonnes_lambairt;
			this.observation = observation;
			this.project = project;
		}
		
		
}
