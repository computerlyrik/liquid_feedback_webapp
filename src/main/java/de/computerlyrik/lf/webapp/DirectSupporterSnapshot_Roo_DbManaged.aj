// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.DirectInterestSnapshot;
import de.computerlyrik.lf.webapp.DirectSupporterSnapshot;
import de.computerlyrik.lf.webapp.Draft;
import de.computerlyrik.lf.webapp.Initiative;
import de.computerlyrik.lf.webapp.Member;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

privileged aspect DirectSupporterSnapshot_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "event", referencedColumnName = "event", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "member_id", referencedColumnName = "member_id", nullable = false, insertable = false, updatable = false) })
    private DirectInterestSnapshot DirectSupporterSnapshot.directInterestSnapshot;
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "initiative_id", referencedColumnName = "initiative_id", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "draft_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false) })
    private Draft DirectSupporterSnapshot.draft;
    
    @ManyToOne
    @JoinColumns({ @JoinColumn(name = "issue_id", referencedColumnName = "issue_id", nullable = false, insertable = false, updatable = false), @JoinColumn(name = "initiative_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false) })
    private Initiative DirectSupporterSnapshot.initiative;
    
    @ManyToOne
    @JoinColumn(name = "member_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    private Member DirectSupporterSnapshot.memberId;
    
    @Column(name = "informed")
    @NotNull
    private boolean DirectSupporterSnapshot.informed;
    
    @Column(name = "satisfied")
    @NotNull
    private boolean DirectSupporterSnapshot.satisfied;
    
    public DirectInterestSnapshot DirectSupporterSnapshot.getDirectInterestSnapshot() {
        return directInterestSnapshot;
    }
    
    public void DirectSupporterSnapshot.setDirectInterestSnapshot(DirectInterestSnapshot directInterestSnapshot) {
        this.directInterestSnapshot = directInterestSnapshot;
    }
    
    public Draft DirectSupporterSnapshot.getDraft() {
        return draft;
    }
    
    public void DirectSupporterSnapshot.setDraft(Draft draft) {
        this.draft = draft;
    }
    
    public Initiative DirectSupporterSnapshot.getInitiative() {
        return initiative;
    }
    
    public void DirectSupporterSnapshot.setInitiative(Initiative initiative) {
        this.initiative = initiative;
    }
    
    public Member DirectSupporterSnapshot.getMemberId() {
        return memberId;
    }
    
    public void DirectSupporterSnapshot.setMemberId(Member memberId) {
        this.memberId = memberId;
    }
    
    public boolean DirectSupporterSnapshot.isInformed() {
        return informed;
    }
    
    public void DirectSupporterSnapshot.setInformed(boolean informed) {
        this.informed = informed;
    }
    
    public boolean DirectSupporterSnapshot.isSatisfied() {
        return satisfied;
    }
    
    public void DirectSupporterSnapshot.setSatisfied(boolean satisfied) {
        this.satisfied = satisfied;
    }
    
}
