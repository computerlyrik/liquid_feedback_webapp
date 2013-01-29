// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.computerlyrik.lf.webapp;

import de.computerlyrik.lf.webapp.Area;
import de.computerlyrik.lf.webapp.AreaSetting;
import de.computerlyrik.lf.webapp.Contact;
import de.computerlyrik.lf.webapp.DelegatingInterestSnapshot;
import de.computerlyrik.lf.webapp.DelegatingPopulationSnapshot;
import de.computerlyrik.lf.webapp.DelegatingVoter;
import de.computerlyrik.lf.webapp.Delegation;
import de.computerlyrik.lf.webapp.DirectInterestSnapshot;
import de.computerlyrik.lf.webapp.DirectPopulationSnapshot;
import de.computerlyrik.lf.webapp.DirectSupporterSnapshot;
import de.computerlyrik.lf.webapp.DirectVoter;
import de.computerlyrik.lf.webapp.Draft;
import de.computerlyrik.lf.webapp.Event;
import de.computerlyrik.lf.webapp.Initiative;
import de.computerlyrik.lf.webapp.InitiativeSetting;
import de.computerlyrik.lf.webapp.Initiator;
import de.computerlyrik.lf.webapp.Issue;
import de.computerlyrik.lf.webapp.IssueSetting;
import de.computerlyrik.lf.webapp.Member;
import de.computerlyrik.lf.webapp.MemberApplication;
import de.computerlyrik.lf.webapp.MemberHistory;
import de.computerlyrik.lf.webapp.MemberImage;
import de.computerlyrik.lf.webapp.MemberRelationSetting;
import de.computerlyrik.lf.webapp.Privilege;
import de.computerlyrik.lf.webapp.RenderedMemberStatement;
import de.computerlyrik.lf.webapp.Session;
import de.computerlyrik.lf.webapp.Setting;
import de.computerlyrik.lf.webapp.SettingMap;
import de.computerlyrik.lf.webapp.Suggestion;
import de.computerlyrik.lf.webapp.SuggestionSetting;
import de.computerlyrik.lf.webapp.UnitSetting;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Member_Roo_DbManaged {
    
    @ManyToMany
    @JoinTable(name = "ignored_member", joinColumns = { @JoinColumn(name = "member_id", nullable = false) }, inverseJoinColumns = { @JoinColumn(name = "other_member_id", nullable = false) })
    private Set<Member> Member.members1;
    
    @ManyToMany(mappedBy = "members", cascade = CascadeType.ALL)
    private Set<Initiative> Member.initiatives;
    
    @ManyToMany(mappedBy = "members1", cascade = CascadeType.ALL)
    private Set<Member> Member.members2;
    
    @ManyToMany(mappedBy = "members", cascade = CascadeType.ALL)
    private Set<Issue> Member.issues;
    
    @ManyToMany(mappedBy = "members", cascade = CascadeType.ALL)
    private Set<Area> Member.areas;
    
    @ManyToMany(mappedBy = "members1", cascade = CascadeType.ALL)
    private Set<Issue> Member.issues1;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<AreaSetting> Member.areaSettings;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<Contact> Member.contacts;
    
    @OneToMany(mappedBy = "otherMemberId", cascade = CascadeType.ALL)
    private Set<Contact> Member.contacts1;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DelegatingInterestSnapshot> Member.delegatingInterestSnapshots;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DelegatingPopulationSnapshot> Member.delegatingPopulationSnapshots;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DelegatingVoter> Member.delegatingVoters;
    
    @OneToMany(mappedBy = "trusteeId", cascade = CascadeType.ALL)
    private Set<Delegation> Member.delegations;
    
    @OneToMany(mappedBy = "trusterId", cascade = CascadeType.ALL)
    private Set<Delegation> Member.delegations1;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DirectInterestSnapshot> Member.directInterestSnapshots;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DirectPopulationSnapshot> Member.directPopulationSnapshots;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DirectSupporterSnapshot> Member.directSupporterSnapshots;
    
    @OneToMany(mappedBy = "memberId")
    private Set<DirectVoter> Member.directVoters;
    
    @OneToMany(mappedBy = "authorId", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Draft> Member.drafts;
    
    @OneToMany(mappedBy = "memberId", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Event> Member.events;
    
    @OneToMany(mappedBy = "revokedByMemberId", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Initiative> Member.initiatives_;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<InitiativeSetting> Member.initiativeSettings;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<Initiator> Member.initiators;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<IssueSetting> Member.issueSettings;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<MemberApplication> Member.memberApplications;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<MemberHistory> Member.memberHistories;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<MemberImage> Member.memberImages;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<MemberRelationSetting> Member.memberRelationSettings;
    
    @OneToMany(mappedBy = "otherMemberId", cascade = CascadeType.ALL)
    private Set<MemberRelationSetting> Member.memberRelationSettings1;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<Privilege> Member.privileges;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<RenderedMemberStatement> Member.renderedMemberStatements;
    
    @OneToMany(mappedBy = "memberId")
    private Set<Session> Member.sessions;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<Setting> Member.settings;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<SettingMap> Member.settingMaps;
    
    @OneToMany(mappedBy = "authorId", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<Suggestion> Member.suggestions;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<SuggestionSetting> Member.suggestionSettings;
    
    @OneToMany(mappedBy = "memberId", cascade = CascadeType.ALL)
    private Set<UnitSetting> Member.unitSettings;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.created = java.util.Calendar.getInstance();
    
    @Column(name = "invite_code", unique = true)
    private String Member.inviteCode;
    
    @Column(name = "invite_code_expiry")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.inviteCodeExpiry;
    
    @Column(name = "admin_comment")
    private String Member.adminComment;
    
    @Column(name = "activated")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.activated;
    
    @Column(name = "last_activity")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Member.lastActivity;
    
    @Column(name = "last_login")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.lastLogin;
    
    @Column(name = "login", unique = true)
    private String Member.login;
    
    @Column(name = "password")
    private String Member.password;
    
    @Column(name = "locked")
    @NotNull
    private boolean Member.locked;
    
    @Column(name = "active")
    @NotNull
    private boolean Member.active;
    
    @Column(name = "admin")
    @NotNull
    private boolean Member.admin;
    
    @Column(name = "lang")
    private String Member.lang;
    
    @Column(name = "notify_email")
    private String Member.notifyEmail;
    
    @Column(name = "notify_email_unconfirmed")
    private String Member.notifyEmailUnconfirmed;
    
    @Column(name = "notify_email_secret", unique = true)
    private String Member.notifyEmailSecret;
    
    @Column(name = "notify_email_secret_expiry")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.notifyEmailSecretExpiry;
    
    @Column(name = "notify_email_lock_expiry")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.notifyEmailLockExpiry;
    
    @Column(name = "notify_level")
    private String Member.notifyLevel;
    
    @Column(name = "password_reset_secret", unique = true)
    private String Member.passwordResetSecret;
    
    @Column(name = "password_reset_secret_expiry")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "MM")
    private Calendar Member.passwordResetSecretExpiry;
    
    @Column(name = "name", unique = true)
    private String Member.name;
    
    @Column(name = "identification", unique = true)
    private String Member.identification;
    
    @Column(name = "authentication")
    private String Member.authentication;
    
    @Column(name = "organizational_unit")
    private String Member.organizationalUnit;
    
    @Column(name = "internal_posts")
    private String Member.internalPosts;
    
    @Column(name = "realname")
    private String Member.realname;
    
    @Column(name = "birthday")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Member.birthday;
    
    @Column(name = "address")
    private String Member.address;
    
    @Column(name = "email")
    private String Member.email;
    
    @Column(name = "xmpp_address")
    private String Member.xmppAddress;
    
    @Column(name = "website")
    private String Member.website;
    
    @Column(name = "phone")
    private String Member.phone;
    
    @Column(name = "mobile_phone")
    private String Member.mobilePhone;
    
    @Column(name = "profession")
    private String Member.profession;
    
    @Column(name = "external_memberships")
    private String Member.externalMemberships;
    
    @Column(name = "external_posts")
    private String Member.externalPosts;
    
    @Column(name = "formatting_engine")
    private String Member.formattingEngine;
    
    @Column(name = "statement")
    private String Member.statement;
    
    @Column(name = "text_search_data")
    private String Member.textSearchData;
    
    public Set<Member> Member.getMembers1() {
        return members1;
    }
    
    public void Member.setMembers1(Set<Member> members1) {
        this.members1 = members1;
    }
    
    public Set<Initiative> Member.getInitiatives() {
        return initiatives;
    }
    
    public void Member.setInitiatives(Set<Initiative> initiatives) {
        this.initiatives = initiatives;
    }
    
    public Set<Member> Member.getMembers2() {
        return members2;
    }
    
    public void Member.setMembers2(Set<Member> members2) {
        this.members2 = members2;
    }
    
    public Set<Issue> Member.getIssues() {
        return issues;
    }
    
    public void Member.setIssues(Set<Issue> issues) {
        this.issues = issues;
    }
    
    public Set<Area> Member.getAreas() {
        return areas;
    }
    
    public void Member.setAreas(Set<Area> areas) {
        this.areas = areas;
    }
    
    public Set<Issue> Member.getIssues1() {
        return issues1;
    }
    
    public void Member.setIssues1(Set<Issue> issues1) {
        this.issues1 = issues1;
    }
    
    public Set<AreaSetting> Member.getAreaSettings() {
        return areaSettings;
    }
    
    public void Member.setAreaSettings(Set<AreaSetting> areaSettings) {
        this.areaSettings = areaSettings;
    }
    
    public Set<Contact> Member.getContacts() {
        return contacts;
    }
    
    public void Member.setContacts(Set<Contact> contacts) {
        this.contacts = contacts;
    }
    
    public Set<Contact> Member.getContacts1() {
        return contacts1;
    }
    
    public void Member.setContacts1(Set<Contact> contacts1) {
        this.contacts1 = contacts1;
    }
    
    public Set<DelegatingInterestSnapshot> Member.getDelegatingInterestSnapshots() {
        return delegatingInterestSnapshots;
    }
    
    public void Member.setDelegatingInterestSnapshots(Set<DelegatingInterestSnapshot> delegatingInterestSnapshots) {
        this.delegatingInterestSnapshots = delegatingInterestSnapshots;
    }
    
    public Set<DelegatingPopulationSnapshot> Member.getDelegatingPopulationSnapshots() {
        return delegatingPopulationSnapshots;
    }
    
    public void Member.setDelegatingPopulationSnapshots(Set<DelegatingPopulationSnapshot> delegatingPopulationSnapshots) {
        this.delegatingPopulationSnapshots = delegatingPopulationSnapshots;
    }
    
    public Set<DelegatingVoter> Member.getDelegatingVoters() {
        return delegatingVoters;
    }
    
    public void Member.setDelegatingVoters(Set<DelegatingVoter> delegatingVoters) {
        this.delegatingVoters = delegatingVoters;
    }
    
    public Set<Delegation> Member.getDelegations() {
        return delegations;
    }
    
    public void Member.setDelegations(Set<Delegation> delegations) {
        this.delegations = delegations;
    }
    
    public Set<Delegation> Member.getDelegations1() {
        return delegations1;
    }
    
    public void Member.setDelegations1(Set<Delegation> delegations1) {
        this.delegations1 = delegations1;
    }
    
    public Set<DirectInterestSnapshot> Member.getDirectInterestSnapshots() {
        return directInterestSnapshots;
    }
    
    public void Member.setDirectInterestSnapshots(Set<DirectInterestSnapshot> directInterestSnapshots) {
        this.directInterestSnapshots = directInterestSnapshots;
    }
    
    public Set<DirectPopulationSnapshot> Member.getDirectPopulationSnapshots() {
        return directPopulationSnapshots;
    }
    
    public void Member.setDirectPopulationSnapshots(Set<DirectPopulationSnapshot> directPopulationSnapshots) {
        this.directPopulationSnapshots = directPopulationSnapshots;
    }
    
    public Set<DirectSupporterSnapshot> Member.getDirectSupporterSnapshots() {
        return directSupporterSnapshots;
    }
    
    public void Member.setDirectSupporterSnapshots(Set<DirectSupporterSnapshot> directSupporterSnapshots) {
        this.directSupporterSnapshots = directSupporterSnapshots;
    }
    
    public Set<DirectVoter> Member.getDirectVoters() {
        return directVoters;
    }
    
    public void Member.setDirectVoters(Set<DirectVoter> directVoters) {
        this.directVoters = directVoters;
    }
    
    public Set<Draft> Member.getDrafts() {
        return drafts;
    }
    
    public void Member.setDrafts(Set<Draft> drafts) {
        this.drafts = drafts;
    }
    
    public Set<Event> Member.getEvents() {
        return events;
    }
    
    public void Member.setEvents(Set<Event> events) {
        this.events = events;
    }
    
    public Set<Initiative> Member.getInitiatives_() {
        return initiatives_;
    }
    
    public void Member.setInitiatives_(Set<Initiative> initiatives_) {
        this.initiatives_ = initiatives_;
    }
    
    public Set<InitiativeSetting> Member.getInitiativeSettings() {
        return initiativeSettings;
    }
    
    public void Member.setInitiativeSettings(Set<InitiativeSetting> initiativeSettings) {
        this.initiativeSettings = initiativeSettings;
    }
    
    public Set<Initiator> Member.getInitiators() {
        return initiators;
    }
    
    public void Member.setInitiators(Set<Initiator> initiators) {
        this.initiators = initiators;
    }
    
    public Set<IssueSetting> Member.getIssueSettings() {
        return issueSettings;
    }
    
    public void Member.setIssueSettings(Set<IssueSetting> issueSettings) {
        this.issueSettings = issueSettings;
    }
    
    public Set<MemberApplication> Member.getMemberApplications() {
        return memberApplications;
    }
    
    public void Member.setMemberApplications(Set<MemberApplication> memberApplications) {
        this.memberApplications = memberApplications;
    }
    
    public Set<MemberHistory> Member.getMemberHistories() {
        return memberHistories;
    }
    
    public void Member.setMemberHistories(Set<MemberHistory> memberHistories) {
        this.memberHistories = memberHistories;
    }
    
    public Set<MemberImage> Member.getMemberImages() {
        return memberImages;
    }
    
    public void Member.setMemberImages(Set<MemberImage> memberImages) {
        this.memberImages = memberImages;
    }
    
    public Set<MemberRelationSetting> Member.getMemberRelationSettings() {
        return memberRelationSettings;
    }
    
    public void Member.setMemberRelationSettings(Set<MemberRelationSetting> memberRelationSettings) {
        this.memberRelationSettings = memberRelationSettings;
    }
    
    public Set<MemberRelationSetting> Member.getMemberRelationSettings1() {
        return memberRelationSettings1;
    }
    
    public void Member.setMemberRelationSettings1(Set<MemberRelationSetting> memberRelationSettings1) {
        this.memberRelationSettings1 = memberRelationSettings1;
    }
    
    public Set<Privilege> Member.getPrivileges() {
        return privileges;
    }
    
    public void Member.setPrivileges(Set<Privilege> privileges) {
        this.privileges = privileges;
    }
    
    public Set<RenderedMemberStatement> Member.getRenderedMemberStatements() {
        return renderedMemberStatements;
    }
    
    public void Member.setRenderedMemberStatements(Set<RenderedMemberStatement> renderedMemberStatements) {
        this.renderedMemberStatements = renderedMemberStatements;
    }
    
    public Set<Session> Member.getSessions() {
        return sessions;
    }
    
    public void Member.setSessions(Set<Session> sessions) {
        this.sessions = sessions;
    }
    
    public Set<Setting> Member.getSettings() {
        return settings;
    }
    
    public void Member.setSettings(Set<Setting> settings) {
        this.settings = settings;
    }
    
    public Set<SettingMap> Member.getSettingMaps() {
        return settingMaps;
    }
    
    public void Member.setSettingMaps(Set<SettingMap> settingMaps) {
        this.settingMaps = settingMaps;
    }
    
    public Set<Suggestion> Member.getSuggestions() {
        return suggestions;
    }
    
    public void Member.setSuggestions(Set<Suggestion> suggestions) {
        this.suggestions = suggestions;
    }
    
    public Set<SuggestionSetting> Member.getSuggestionSettings() {
        return suggestionSettings;
    }
    
    public void Member.setSuggestionSettings(Set<SuggestionSetting> suggestionSettings) {
        this.suggestionSettings = suggestionSettings;
    }
    
    public Set<UnitSetting> Member.getUnitSettings() {
        return unitSettings;
    }
    
    public void Member.setUnitSettings(Set<UnitSetting> unitSettings) {
        this.unitSettings = unitSettings;
    }
    
    public Calendar Member.getCreated() {
        return created;
    }
    
    public void Member.setCreated(Calendar created) {
        this.created = created;
    }
    
    public String Member.getInviteCode() {
        return inviteCode;
    }
    
    public void Member.setInviteCode(String inviteCode) {
        this.inviteCode = inviteCode;
    }
    
    public Calendar Member.getInviteCodeExpiry() {
        return inviteCodeExpiry;
    }
    
    public void Member.setInviteCodeExpiry(Calendar inviteCodeExpiry) {
        this.inviteCodeExpiry = inviteCodeExpiry;
    }
    
    public String Member.getAdminComment() {
        return adminComment;
    }
    
    public void Member.setAdminComment(String adminComment) {
        this.adminComment = adminComment;
    }
    
    public Calendar Member.getActivated() {
        return activated;
    }
    
    public void Member.setActivated(Calendar activated) {
        this.activated = activated;
    }
    
    public Date Member.getLastActivity() {
        return lastActivity;
    }
    
    public void Member.setLastActivity(Date lastActivity) {
        this.lastActivity = lastActivity;
    }
    
    public Calendar Member.getLastLogin() {
        return lastLogin;
    }
    
    public void Member.setLastLogin(Calendar lastLogin) {
        this.lastLogin = lastLogin;
    }
    
    public String Member.getLogin() {
        return login;
    }
    
    public void Member.setLogin(String login) {
        this.login = login;
    }
    
    public String Member.getPassword() {
        return password;
    }
    
    public void Member.setPassword(String password) {
        this.password = password;
    }
    
    public boolean Member.isLocked() {
        return locked;
    }
    
    public void Member.setLocked(boolean locked) {
        this.locked = locked;
    }
    
    public boolean Member.isActive() {
        return active;
    }
    
    public void Member.setActive(boolean active) {
        this.active = active;
    }
    
    public boolean Member.isAdmin() {
        return admin;
    }
    
    public void Member.setAdmin(boolean admin) {
        this.admin = admin;
    }
    
    public String Member.getLang() {
        return lang;
    }
    
    public void Member.setLang(String lang) {
        this.lang = lang;
    }
    
    public String Member.getNotifyEmail() {
        return notifyEmail;
    }
    
    public void Member.setNotifyEmail(String notifyEmail) {
        this.notifyEmail = notifyEmail;
    }
    
    public String Member.getNotifyEmailUnconfirmed() {
        return notifyEmailUnconfirmed;
    }
    
    public void Member.setNotifyEmailUnconfirmed(String notifyEmailUnconfirmed) {
        this.notifyEmailUnconfirmed = notifyEmailUnconfirmed;
    }
    
    public String Member.getNotifyEmailSecret() {
        return notifyEmailSecret;
    }
    
    public void Member.setNotifyEmailSecret(String notifyEmailSecret) {
        this.notifyEmailSecret = notifyEmailSecret;
    }
    
    public Calendar Member.getNotifyEmailSecretExpiry() {
        return notifyEmailSecretExpiry;
    }
    
    public void Member.setNotifyEmailSecretExpiry(Calendar notifyEmailSecretExpiry) {
        this.notifyEmailSecretExpiry = notifyEmailSecretExpiry;
    }
    
    public Calendar Member.getNotifyEmailLockExpiry() {
        return notifyEmailLockExpiry;
    }
    
    public void Member.setNotifyEmailLockExpiry(Calendar notifyEmailLockExpiry) {
        this.notifyEmailLockExpiry = notifyEmailLockExpiry;
    }
    
    public String Member.getNotifyLevel() {
        return notifyLevel;
    }
    
    public void Member.setNotifyLevel(String notifyLevel) {
        this.notifyLevel = notifyLevel;
    }
    
    public String Member.getPasswordResetSecret() {
        return passwordResetSecret;
    }
    
    public void Member.setPasswordResetSecret(String passwordResetSecret) {
        this.passwordResetSecret = passwordResetSecret;
    }
    
    public Calendar Member.getPasswordResetSecretExpiry() {
        return passwordResetSecretExpiry;
    }
    
    public void Member.setPasswordResetSecretExpiry(Calendar passwordResetSecretExpiry) {
        this.passwordResetSecretExpiry = passwordResetSecretExpiry;
    }
    
    public String Member.getName() {
        return name;
    }
    
    public void Member.setName(String name) {
        this.name = name;
    }
    
    public String Member.getIdentification() {
        return identification;
    }
    
    public void Member.setIdentification(String identification) {
        this.identification = identification;
    }
    
    public String Member.getAuthentication() {
        return authentication;
    }
    
    public void Member.setAuthentication(String authentication) {
        this.authentication = authentication;
    }
    
    public String Member.getOrganizationalUnit() {
        return organizationalUnit;
    }
    
    public void Member.setOrganizationalUnit(String organizationalUnit) {
        this.organizationalUnit = organizationalUnit;
    }
    
    public String Member.getInternalPosts() {
        return internalPosts;
    }
    
    public void Member.setInternalPosts(String internalPosts) {
        this.internalPosts = internalPosts;
    }
    
    public String Member.getRealname() {
        return realname;
    }
    
    public void Member.setRealname(String realname) {
        this.realname = realname;
    }
    
    public Date Member.getBirthday() {
        return birthday;
    }
    
    public void Member.setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    
    public String Member.getAddress() {
        return address;
    }
    
    public void Member.setAddress(String address) {
        this.address = address;
    }
    
    public String Member.getEmail() {
        return email;
    }
    
    public void Member.setEmail(String email) {
        this.email = email;
    }
    
    public String Member.getXmppAddress() {
        return xmppAddress;
    }
    
    public void Member.setXmppAddress(String xmppAddress) {
        this.xmppAddress = xmppAddress;
    }
    
    public String Member.getWebsite() {
        return website;
    }
    
    public void Member.setWebsite(String website) {
        this.website = website;
    }
    
    public String Member.getPhone() {
        return phone;
    }
    
    public void Member.setPhone(String phone) {
        this.phone = phone;
    }
    
    public String Member.getMobilePhone() {
        return mobilePhone;
    }
    
    public void Member.setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }
    
    public String Member.getProfession() {
        return profession;
    }
    
    public void Member.setProfession(String profession) {
        this.profession = profession;
    }
    
    public String Member.getExternalMemberships() {
        return externalMemberships;
    }
    
    public void Member.setExternalMemberships(String externalMemberships) {
        this.externalMemberships = externalMemberships;
    }
    
    public String Member.getExternalPosts() {
        return externalPosts;
    }
    
    public void Member.setExternalPosts(String externalPosts) {
        this.externalPosts = externalPosts;
    }
    
    public String Member.getFormattingEngine() {
        return formattingEngine;
    }
    
    public void Member.setFormattingEngine(String formattingEngine) {
        this.formattingEngine = formattingEngine;
    }
    
    public String Member.getStatement() {
        return statement;
    }
    
    public void Member.setStatement(String statement) {
        this.statement = statement;
    }
    
    public String Member.getTextSearchData() {
        return textSearchData;
    }
    
    public void Member.setTextSearchData(String textSearchData) {
        this.textSearchData = textSearchData;
    }
    
}