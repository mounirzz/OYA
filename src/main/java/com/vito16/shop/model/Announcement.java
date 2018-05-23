package com.vito16.shop.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Entity
@Table(name = "t_announcement")
public class Announcement implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
    private String content;//Contenu de l'announcement
    private Date createTime;//Creation du date
    private Admin createAdmin;//Créer un Admin

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @ManyToOne
    @JoinColumn
    public Admin getCreateAdmin() {
        return createAdmin;
    }

    public void setCreateAdmin(Admin createAdmin) {
        this.createAdmin = createAdmin;
    }
}
