package com.graduation.model;

import java.util.Date;

public class Repository {
    private Long id;

    private String name;

    private String fullName;

    private String htmlUrl;

    private String description;

    private Date createdAt;

    private Date updatedAt;

    private Date pushedAt;

    private String gitUrl;

    private String sshUrl;

    private String cloneUrl;

    private String svnUrl;

    private Integer size;

    private Integer starCount;

    private Integer watchersCount;

    private Integer forksCount;

    private String language;

    private Integer developerid;

    private Long parentid;

    private Long sourceid;

    public Repository(Long id, String name, String fullName, String htmlUrl, String description, Date createdAt, Date updatedAt, Date pushedAt, String gitUrl, String sshUrl, String cloneUrl, String svnUrl, Integer size, Integer starCount, Integer watchersCount, Integer forksCount, String language, Integer developerid, Long parentid, Long sourceid) {
        this.id = id;
        this.name = name;
        this.fullName = fullName;
        this.htmlUrl = htmlUrl;
        this.description = description;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
        this.pushedAt = pushedAt;
        this.gitUrl = gitUrl;
        this.sshUrl = sshUrl;
        this.cloneUrl = cloneUrl;
        this.svnUrl = svnUrl;
        this.size = size;
        this.starCount = starCount;
        this.watchersCount = watchersCount;
        this.forksCount = forksCount;
        this.language = language;
        this.developerid = developerid;
        this.parentid = parentid;
        this.sourceid = sourceid;
    }

    public Repository() {
        super();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName == null ? null : fullName.trim();
    }

    public String getHtmlUrl() {
        return htmlUrl;
    }

    public void setHtmlUrl(String htmlUrl) {
        this.htmlUrl = htmlUrl == null ? null : htmlUrl.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Date getPushedAt() {
        return pushedAt;
    }

    public void setPushedAt(Date pushedAt) {
        this.pushedAt = pushedAt;
    }

    public String getGitUrl() {
        return gitUrl;
    }

    public void setGitUrl(String gitUrl) {
        this.gitUrl = gitUrl == null ? null : gitUrl.trim();
    }

    public String getSshUrl() {
        return sshUrl;
    }

    public void setSshUrl(String sshUrl) {
        this.sshUrl = sshUrl == null ? null : sshUrl.trim();
    }

    public String getCloneUrl() {
        return cloneUrl;
    }

    public void setCloneUrl(String cloneUrl) {
        this.cloneUrl = cloneUrl == null ? null : cloneUrl.trim();
    }

    public String getSvnUrl() {
        return svnUrl;
    }

    public void setSvnUrl(String svnUrl) {
        this.svnUrl = svnUrl == null ? null : svnUrl.trim();
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getStarCount() {
        return starCount;
    }

    public void setStarCount(Integer starCount) {
        this.starCount = starCount;
    }

    public Integer getWatchersCount() {
        return watchersCount;
    }

    public void setWatchersCount(Integer watchersCount) {
        this.watchersCount = watchersCount;
    }

    public Integer getForksCount() {
        return forksCount;
    }

    public void setForksCount(Integer forksCount) {
        this.forksCount = forksCount;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public Integer getDeveloperid() {
        return developerid;
    }

    public void setDeveloperid(Integer developerid) {
        this.developerid = developerid;
    }

    public Long getParentid() {
        return parentid;
    }

    public void setParentid(Long parentid) {
        this.parentid = parentid;
    }

    public Long getSourceid() {
        return sourceid;
    }

    public void setSourceid(Long sourceid) {
        this.sourceid = sourceid;
    }
}