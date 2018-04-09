package com.graduation.util;

public class URLBuilder {
    /**
     * 通过 用户名 构建用户URL
     *
     * @param userName nama user.
     * @return String类型的URL地址
     */
    public static String urlDeveBuilder(String userName) {
        return "https://api.github.com/users/" + userName;
    }

    /**
     * 通过 项目全名 构建URL
     *
     * @param name
     * @return String类型的URL地址
     */
    public static String urlRepoBuilder(String name) {
        return "https://api.github.com/repos/" + name;
    }

    /**
     * 通过 搜索开发者 构建URL
     *
     * @param params
     * @return String类型的URL地址
     */
    public static String urlSearchDeveBuilder(String params) {

        return "https://api.github.com/search/users?q=" + params;
    }

    /**
     * 通过 搜索项目 构建URL
     *
     * @param params
     * @return String类型的URL地址
     */
    public static String urlSearchRepoBuilder(String params) {

        return "https://api.github.com/search/repositories?q=" + params;
    }
}
