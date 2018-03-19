package com.graduation.model;

/**
 * 用户实体类
 */
public class Developer {
    /**
     *登录名
     */
    private String login;

    private int id;
    /**
     * 头像地址
     */
    private String avatar_url;
    /**
     * github首页地址
     */
    private String html_url;
    /**
     * 关注你的人
     */
    private String followers_url;
    /**
     * 你关注的人
     */
    private String following_url;
    /**
     * star过的列表
     */
    private String starred_url;
    /**
     * 仓库列表
     */
    private String repos_url;
    /**
     *用户姓名
     */
    private String name;
    /**
     *公司
     */
    private String company;
    /**
     *博客
     */
    private String blog;
    /**
     *电子邮箱
     */
    private String email;
    /**
     * 个人简介
     */
    private String bio;
    /**
     * 公开的库个数
     */
    private String public_repos;
    /**
     *被关注个数
     */
    private String followers;
    /**
     *关注个数
     */
    private String following;
    /**
     *账号创建时间
     */
    private String created_at;
    /**
     *账号修改时间
     */
    private String updated_at;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getBlog() {
        return blog;
    }

    public void setBlog(String blog) {
        this.blog = blog;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getPublic_repos() {
        return public_repos;
    }

    public void setPublic_repos(String public_repos) {
        this.public_repos = public_repos;
    }

    public String getFollowers() {
        return followers;
    }

    public void setFollowers(String followers) {
        this.followers = followers;
    }

    public String getFollowing() {
        return following;
    }

    public void setFollowing(String following) {
        this.following = following;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public void setLogin(String login){
        this.login = login;
    }
    public String getLogin(){
        return this.login;
    }
    public void setId(int id){
        this.id = id;
    }
    public int getId(){
        return this.id;
    }
    public void setAvatar_url(String avatar_url){
        this.avatar_url = avatar_url;
    }
    public String getAvatar_url(){
        return this.avatar_url;
    }

    public void setHtml_url(String html_url){
        this.html_url = html_url;
    }
    public String getHtml_url(){
        return this.html_url;
    }
    public void setFollowers_url(String followers_url){
        this.followers_url = followers_url;
    }
    public String getFollowers_url(){
        return this.followers_url;
    }
    public void setFollowing_url(String following_url){
        this.following_url = following_url;
    }
    public String getFollowing_url(){
        return this.following_url;
    }

    public void setStarred_url(String starred_url){
        this.starred_url = starred_url;
    }
    public String getStarred_url(){
        return this.starred_url;
    }

    public void setRepos_url(String repos_url){
        this.repos_url = repos_url;
    }
    public String getRepos_url(){
        return this.repos_url;
    }

}


