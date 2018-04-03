package com.graduation.util;

public class URLBuilder {
    /**
     * 通过 用户名 构建用户URL
     *
     * @param userName nama user.
     * @return String类型的URL地址
     */
    public static String urlUserBuilder(String userName) {
        String result = "https://api.github.com/users/" + userName;
        return result;
    }

    /**
     * 通过 用户名和项目名 构建仓库URL
     *
     * @param repoName
     * @return String类型的URL地址
     */
    public static String urlRepoBuilder(String userName, String repoName) {
        String result = "https://api.github.com/repos/" + userName + repoName;
        return result;
    }

    /**
     * 通过 搜索选项 构建仓库URL
     *
     * @param searchType,params
     * @return String类型的URL地址
     */
    public static String urlSearchBuilder(int searchType, String params) {
        String search = null;
        switch (searchType) {
            case 0:
                search = "repositories?q=" + params;
                break;
            case 1:
                search = "users?q=" + params;
                break;
        }
        String result = "https://api.github.com/search/" + search;
        return result;
    }
}
