package com.vito16.shop.model;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

public class Chantier implements Serializable {
	
	private static final long serialVersionUID = 1L;
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
		public Chantier(long id, String intitule, long image, String cordonnes_lambairt, String observation) {
			super();
			this.id = id;
			this.intitule = intitule;
			this.image = image;
			this.cordonnes_lambairt = cordonnes_lambairt;
			this.observation = observation;
		}
		
}
