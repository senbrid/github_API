package com.graduation.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DeveloperExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DeveloperExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andLoginIsNull() {
            addCriterion("login is null");
            return (Criteria) this;
        }

        public Criteria andLoginIsNotNull() {
            addCriterion("login is not null");
            return (Criteria) this;
        }

        public Criteria andLoginEqualTo(String value) {
            addCriterion("login =", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginNotEqualTo(String value) {
            addCriterion("login <>", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginGreaterThan(String value) {
            addCriterion("login >", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginGreaterThanOrEqualTo(String value) {
            addCriterion("login >=", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginLessThan(String value) {
            addCriterion("login <", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginLessThanOrEqualTo(String value) {
            addCriterion("login <=", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginLike(String value) {
            addCriterion("login like", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginNotLike(String value) {
            addCriterion("login not like", value, "login");
            return (Criteria) this;
        }

        public Criteria andLoginIn(List<String> values) {
            addCriterion("login in", values, "login");
            return (Criteria) this;
        }

        public Criteria andLoginNotIn(List<String> values) {
            addCriterion("login not in", values, "login");
            return (Criteria) this;
        }

        public Criteria andLoginBetween(String value1, String value2) {
            addCriterion("login between", value1, value2, "login");
            return (Criteria) this;
        }

        public Criteria andLoginNotBetween(String value1, String value2) {
            addCriterion("login not between", value1, value2, "login");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlIsNull() {
            addCriterion("avatar_url is null");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlIsNotNull() {
            addCriterion("avatar_url is not null");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlEqualTo(String value) {
            addCriterion("avatar_url =", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlNotEqualTo(String value) {
            addCriterion("avatar_url <>", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlGreaterThan(String value) {
            addCriterion("avatar_url >", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlGreaterThanOrEqualTo(String value) {
            addCriterion("avatar_url >=", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlLessThan(String value) {
            addCriterion("avatar_url <", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlLessThanOrEqualTo(String value) {
            addCriterion("avatar_url <=", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlLike(String value) {
            addCriterion("avatar_url like", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlNotLike(String value) {
            addCriterion("avatar_url not like", value, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlIn(List<String> values) {
            addCriterion("avatar_url in", values, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlNotIn(List<String> values) {
            addCriterion("avatar_url not in", values, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlBetween(String value1, String value2) {
            addCriterion("avatar_url between", value1, value2, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andAvatarUrlNotBetween(String value1, String value2) {
            addCriterion("avatar_url not between", value1, value2, "avatarUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlIsNull() {
            addCriterion("html_url is null");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlIsNotNull() {
            addCriterion("html_url is not null");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlEqualTo(String value) {
            addCriterion("html_url =", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlNotEqualTo(String value) {
            addCriterion("html_url <>", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlGreaterThan(String value) {
            addCriterion("html_url >", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlGreaterThanOrEqualTo(String value) {
            addCriterion("html_url >=", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlLessThan(String value) {
            addCriterion("html_url <", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlLessThanOrEqualTo(String value) {
            addCriterion("html_url <=", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlLike(String value) {
            addCriterion("html_url like", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlNotLike(String value) {
            addCriterion("html_url not like", value, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlIn(List<String> values) {
            addCriterion("html_url in", values, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlNotIn(List<String> values) {
            addCriterion("html_url not in", values, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlBetween(String value1, String value2) {
            addCriterion("html_url between", value1, value2, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andHtmlUrlNotBetween(String value1, String value2) {
            addCriterion("html_url not between", value1, value2, "htmlUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlIsNull() {
            addCriterion("followers_url is null");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlIsNotNull() {
            addCriterion("followers_url is not null");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlEqualTo(String value) {
            addCriterion("followers_url =", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlNotEqualTo(String value) {
            addCriterion("followers_url <>", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlGreaterThan(String value) {
            addCriterion("followers_url >", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlGreaterThanOrEqualTo(String value) {
            addCriterion("followers_url >=", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlLessThan(String value) {
            addCriterion("followers_url <", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlLessThanOrEqualTo(String value) {
            addCriterion("followers_url <=", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlLike(String value) {
            addCriterion("followers_url like", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlNotLike(String value) {
            addCriterion("followers_url not like", value, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlIn(List<String> values) {
            addCriterion("followers_url in", values, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlNotIn(List<String> values) {
            addCriterion("followers_url not in", values, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlBetween(String value1, String value2) {
            addCriterion("followers_url between", value1, value2, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowersUrlNotBetween(String value1, String value2) {
            addCriterion("followers_url not between", value1, value2, "followersUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlIsNull() {
            addCriterion("following_url is null");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlIsNotNull() {
            addCriterion("following_url is not null");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlEqualTo(String value) {
            addCriterion("following_url =", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlNotEqualTo(String value) {
            addCriterion("following_url <>", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlGreaterThan(String value) {
            addCriterion("following_url >", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlGreaterThanOrEqualTo(String value) {
            addCriterion("following_url >=", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlLessThan(String value) {
            addCriterion("following_url <", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlLessThanOrEqualTo(String value) {
            addCriterion("following_url <=", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlLike(String value) {
            addCriterion("following_url like", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlNotLike(String value) {
            addCriterion("following_url not like", value, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlIn(List<String> values) {
            addCriterion("following_url in", values, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlNotIn(List<String> values) {
            addCriterion("following_url not in", values, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlBetween(String value1, String value2) {
            addCriterion("following_url between", value1, value2, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andFollowingUrlNotBetween(String value1, String value2) {
            addCriterion("following_url not between", value1, value2, "followingUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlIsNull() {
            addCriterion("stared_url is null");
            return (Criteria) this;
        }

        public Criteria andStaredUrlIsNotNull() {
            addCriterion("stared_url is not null");
            return (Criteria) this;
        }

        public Criteria andStaredUrlEqualTo(String value) {
            addCriterion("stared_url =", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlNotEqualTo(String value) {
            addCriterion("stared_url <>", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlGreaterThan(String value) {
            addCriterion("stared_url >", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlGreaterThanOrEqualTo(String value) {
            addCriterion("stared_url >=", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlLessThan(String value) {
            addCriterion("stared_url <", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlLessThanOrEqualTo(String value) {
            addCriterion("stared_url <=", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlLike(String value) {
            addCriterion("stared_url like", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlNotLike(String value) {
            addCriterion("stared_url not like", value, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlIn(List<String> values) {
            addCriterion("stared_url in", values, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlNotIn(List<String> values) {
            addCriterion("stared_url not in", values, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlBetween(String value1, String value2) {
            addCriterion("stared_url between", value1, value2, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andStaredUrlNotBetween(String value1, String value2) {
            addCriterion("stared_url not between", value1, value2, "staredUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlIsNull() {
            addCriterion("repos_url is null");
            return (Criteria) this;
        }

        public Criteria andReposUrlIsNotNull() {
            addCriterion("repos_url is not null");
            return (Criteria) this;
        }

        public Criteria andReposUrlEqualTo(String value) {
            addCriterion("repos_url =", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlNotEqualTo(String value) {
            addCriterion("repos_url <>", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlGreaterThan(String value) {
            addCriterion("repos_url >", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlGreaterThanOrEqualTo(String value) {
            addCriterion("repos_url >=", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlLessThan(String value) {
            addCriterion("repos_url <", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlLessThanOrEqualTo(String value) {
            addCriterion("repos_url <=", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlLike(String value) {
            addCriterion("repos_url like", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlNotLike(String value) {
            addCriterion("repos_url not like", value, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlIn(List<String> values) {
            addCriterion("repos_url in", values, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlNotIn(List<String> values) {
            addCriterion("repos_url not in", values, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlBetween(String value1, String value2) {
            addCriterion("repos_url between", value1, value2, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andReposUrlNotBetween(String value1, String value2) {
            addCriterion("repos_url not between", value1, value2, "reposUrl");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNull() {
            addCriterion("company is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIsNotNull() {
            addCriterion("company is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyEqualTo(String value) {
            addCriterion("company =", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotEqualTo(String value) {
            addCriterion("company <>", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThan(String value) {
            addCriterion("company >", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyGreaterThanOrEqualTo(String value) {
            addCriterion("company >=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThan(String value) {
            addCriterion("company <", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLessThanOrEqualTo(String value) {
            addCriterion("company <=", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyLike(String value) {
            addCriterion("company like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotLike(String value) {
            addCriterion("company not like", value, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyIn(List<String> values) {
            addCriterion("company in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotIn(List<String> values) {
            addCriterion("company not in", values, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyBetween(String value1, String value2) {
            addCriterion("company between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andCompanyNotBetween(String value1, String value2) {
            addCriterion("company not between", value1, value2, "company");
            return (Criteria) this;
        }

        public Criteria andBlogIsNull() {
            addCriterion("blog is null");
            return (Criteria) this;
        }

        public Criteria andBlogIsNotNull() {
            addCriterion("blog is not null");
            return (Criteria) this;
        }

        public Criteria andBlogEqualTo(String value) {
            addCriterion("blog =", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogNotEqualTo(String value) {
            addCriterion("blog <>", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogGreaterThan(String value) {
            addCriterion("blog >", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogGreaterThanOrEqualTo(String value) {
            addCriterion("blog >=", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogLessThan(String value) {
            addCriterion("blog <", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogLessThanOrEqualTo(String value) {
            addCriterion("blog <=", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogLike(String value) {
            addCriterion("blog like", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogNotLike(String value) {
            addCriterion("blog not like", value, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogIn(List<String> values) {
            addCriterion("blog in", values, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogNotIn(List<String> values) {
            addCriterion("blog not in", values, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogBetween(String value1, String value2) {
            addCriterion("blog between", value1, value2, "blog");
            return (Criteria) this;
        }

        public Criteria andBlogNotBetween(String value1, String value2) {
            addCriterion("blog not between", value1, value2, "blog");
            return (Criteria) this;
        }

        public Criteria andEmailIsNull() {
            addCriterion("email is null");
            return (Criteria) this;
        }

        public Criteria andEmailIsNotNull() {
            addCriterion("email is not null");
            return (Criteria) this;
        }

        public Criteria andEmailEqualTo(String value) {
            addCriterion("email =", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotEqualTo(String value) {
            addCriterion("email <>", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThan(String value) {
            addCriterion("email >", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailGreaterThanOrEqualTo(String value) {
            addCriterion("email >=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThan(String value) {
            addCriterion("email <", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLessThanOrEqualTo(String value) {
            addCriterion("email <=", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailLike(String value) {
            addCriterion("email like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotLike(String value) {
            addCriterion("email not like", value, "email");
            return (Criteria) this;
        }

        public Criteria andEmailIn(List<String> values) {
            addCriterion("email in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotIn(List<String> values) {
            addCriterion("email not in", values, "email");
            return (Criteria) this;
        }

        public Criteria andEmailBetween(String value1, String value2) {
            addCriterion("email between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andEmailNotBetween(String value1, String value2) {
            addCriterion("email not between", value1, value2, "email");
            return (Criteria) this;
        }

        public Criteria andBioIsNull() {
            addCriterion("bio is null");
            return (Criteria) this;
        }

        public Criteria andBioIsNotNull() {
            addCriterion("bio is not null");
            return (Criteria) this;
        }

        public Criteria andBioEqualTo(String value) {
            addCriterion("bio =", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioNotEqualTo(String value) {
            addCriterion("bio <>", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioGreaterThan(String value) {
            addCriterion("bio >", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioGreaterThanOrEqualTo(String value) {
            addCriterion("bio >=", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioLessThan(String value) {
            addCriterion("bio <", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioLessThanOrEqualTo(String value) {
            addCriterion("bio <=", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioLike(String value) {
            addCriterion("bio like", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioNotLike(String value) {
            addCriterion("bio not like", value, "bio");
            return (Criteria) this;
        }

        public Criteria andBioIn(List<String> values) {
            addCriterion("bio in", values, "bio");
            return (Criteria) this;
        }

        public Criteria andBioNotIn(List<String> values) {
            addCriterion("bio not in", values, "bio");
            return (Criteria) this;
        }

        public Criteria andBioBetween(String value1, String value2) {
            addCriterion("bio between", value1, value2, "bio");
            return (Criteria) this;
        }

        public Criteria andBioNotBetween(String value1, String value2) {
            addCriterion("bio not between", value1, value2, "bio");
            return (Criteria) this;
        }

        public Criteria andPublicReposIsNull() {
            addCriterion("public_repos is null");
            return (Criteria) this;
        }

        public Criteria andPublicReposIsNotNull() {
            addCriterion("public_repos is not null");
            return (Criteria) this;
        }

        public Criteria andPublicReposEqualTo(Integer value) {
            addCriterion("public_repos =", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposNotEqualTo(Integer value) {
            addCriterion("public_repos <>", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposGreaterThan(Integer value) {
            addCriterion("public_repos >", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposGreaterThanOrEqualTo(Integer value) {
            addCriterion("public_repos >=", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposLessThan(Integer value) {
            addCriterion("public_repos <", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposLessThanOrEqualTo(Integer value) {
            addCriterion("public_repos <=", value, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposIn(List<Integer> values) {
            addCriterion("public_repos in", values, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposNotIn(List<Integer> values) {
            addCriterion("public_repos not in", values, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposBetween(Integer value1, Integer value2) {
            addCriterion("public_repos between", value1, value2, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andPublicReposNotBetween(Integer value1, Integer value2) {
            addCriterion("public_repos not between", value1, value2, "publicRepos");
            return (Criteria) this;
        }

        public Criteria andFollowersIsNull() {
            addCriterion("followers is null");
            return (Criteria) this;
        }

        public Criteria andFollowersIsNotNull() {
            addCriterion("followers is not null");
            return (Criteria) this;
        }

        public Criteria andFollowersEqualTo(Integer value) {
            addCriterion("followers =", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersNotEqualTo(Integer value) {
            addCriterion("followers <>", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersGreaterThan(Integer value) {
            addCriterion("followers >", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersGreaterThanOrEqualTo(Integer value) {
            addCriterion("followers >=", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersLessThan(Integer value) {
            addCriterion("followers <", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersLessThanOrEqualTo(Integer value) {
            addCriterion("followers <=", value, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersIn(List<Integer> values) {
            addCriterion("followers in", values, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersNotIn(List<Integer> values) {
            addCriterion("followers not in", values, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersBetween(Integer value1, Integer value2) {
            addCriterion("followers between", value1, value2, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowersNotBetween(Integer value1, Integer value2) {
            addCriterion("followers not between", value1, value2, "followers");
            return (Criteria) this;
        }

        public Criteria andFollowingIsNull() {
            addCriterion("following is null");
            return (Criteria) this;
        }

        public Criteria andFollowingIsNotNull() {
            addCriterion("following is not null");
            return (Criteria) this;
        }

        public Criteria andFollowingEqualTo(Integer value) {
            addCriterion("following =", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingNotEqualTo(Integer value) {
            addCriterion("following <>", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingGreaterThan(Integer value) {
            addCriterion("following >", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingGreaterThanOrEqualTo(Integer value) {
            addCriterion("following >=", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingLessThan(Integer value) {
            addCriterion("following <", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingLessThanOrEqualTo(Integer value) {
            addCriterion("following <=", value, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingIn(List<Integer> values) {
            addCriterion("following in", values, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingNotIn(List<Integer> values) {
            addCriterion("following not in", values, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingBetween(Integer value1, Integer value2) {
            addCriterion("following between", value1, value2, "following");
            return (Criteria) this;
        }

        public Criteria andFollowingNotBetween(Integer value1, Integer value2) {
            addCriterion("following not between", value1, value2, "following");
            return (Criteria) this;
        }

        public Criteria andCreatedAtIsNull() {
            addCriterion("created_at is null");
            return (Criteria) this;
        }

        public Criteria andCreatedAtIsNotNull() {
            addCriterion("created_at is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedAtEqualTo(Date value) {
            addCriterion("created_at =", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtNotEqualTo(Date value) {
            addCriterion("created_at <>", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtGreaterThan(Date value) {
            addCriterion("created_at >", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtGreaterThanOrEqualTo(Date value) {
            addCriterion("created_at >=", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtLessThan(Date value) {
            addCriterion("created_at <", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtLessThanOrEqualTo(Date value) {
            addCriterion("created_at <=", value, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtIn(List<Date> values) {
            addCriterion("created_at in", values, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtNotIn(List<Date> values) {
            addCriterion("created_at not in", values, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtBetween(Date value1, Date value2) {
            addCriterion("created_at between", value1, value2, "createdAt");
            return (Criteria) this;
        }

        public Criteria andCreatedAtNotBetween(Date value1, Date value2) {
            addCriterion("created_at not between", value1, value2, "createdAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtIsNull() {
            addCriterion("updated_at is null");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtIsNotNull() {
            addCriterion("updated_at is not null");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtEqualTo(Date value) {
            addCriterion("updated_at =", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtNotEqualTo(Date value) {
            addCriterion("updated_at <>", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtGreaterThan(Date value) {
            addCriterion("updated_at >", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtGreaterThanOrEqualTo(Date value) {
            addCriterion("updated_at >=", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtLessThan(Date value) {
            addCriterion("updated_at <", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtLessThanOrEqualTo(Date value) {
            addCriterion("updated_at <=", value, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtIn(List<Date> values) {
            addCriterion("updated_at in", values, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtNotIn(List<Date> values) {
            addCriterion("updated_at not in", values, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtBetween(Date value1, Date value2) {
            addCriterion("updated_at between", value1, value2, "updatedAt");
            return (Criteria) this;
        }

        public Criteria andUpdatedAtNotBetween(Date value1, Date value2) {
            addCriterion("updated_at not between", value1, value2, "updatedAt");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}