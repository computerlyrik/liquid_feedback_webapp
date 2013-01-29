// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.Session;
import java.util.Calendar;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Session_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id")
    private Member Session.memberId;
    
    @Column(name = "additional_secret")
    private String Session.additionalSecret;
    
    @Column(name = "expiry")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Session.expiry;
    
    @Column(name = "lang")
    private String Session.lang;
    
    public Member Session.getMemberId() {
        return memberId;
    }
    
    public void Session.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public String Session.getAdditionalSecret() {
        return additionalSecret;
    }
    
    public void Session.setAdditionalSecret(String additionalSecret) {
        this.additionalSecret = additionalSecret;
    }
    
    public Calendar Session.getExpiry() {
        return expiry;
    }
    
    public void Session.setExpiry(Calendar expiry) {
        this.expiry = expiry;
    }
    
    public String Session.getLang() {
        return lang;
    }
    
    public void Session.setLang(String lang) {
        this.lang = lang;
    }
    
}